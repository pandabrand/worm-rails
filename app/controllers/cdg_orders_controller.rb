class CdgOrdersController < ApplicationController
  before_action :set_cdg_order, only: [:show, :edit, :update, :destroy]

  # GET /cdg_orders
  # GET /cdg_orders.json
  def index
    @cdg_orders = CdgOrder.paginate(page: params[:page])
    @notice = params[:notice]
  end

  # GET /cdg_orders/1
  # GET /cdg_orders/1.json
  # GET /cdg_orders/1.xml
  def show
    begin
      gather_and_compress_order(@cdg_order)
    rescue StandardError => exception
      Worm.create(
        cdg_order_id: @cdg_order.pk_id,
        status: 'Failed',
        result: 'gather materials failed',
        error_code: exception
      )
    end
    respond_to do |format|
      format.html
      format.json
      format.xml do
        stream = render_to_string(template: 'cdg_orders/show')
        send_data stream, filename: "#{@cdg_order.worm_name_resource}_ind.xml"
      end
    end
  end

  # GET /arfs/1
  def arf
    @cdg_order = CdgOrder.find(params[:id])
    @name = @cdg_order.worm_name_resource
    respond_to do |format|
      format.pdf do
        pdf = render_to_string pdf: "ARF_#{@cdg_order.pk_id}.pdf", template: "cdg_orders/arf.html", encoding: "UTF-8"
        File.open("public/#{@name}.pdf", 'wb') do|f|
          f.write(pdf)
        end
        send_data pdf, filename: "ARF_#{@name}.pdf"
      end
      format.xml do
        stream = render_to_string(template: 'cdg_orders/show_arf')
        send_data stream, filename: "ARF_#{@cdg_order.worm_name_resource}_ind.xml"
      end
    end
  end

  def gather_and_compress_order()
    @cdg_order = CdgOrder.find(params[:id])
    dir = "public/drop/#{@cdg_order.pk_id}"
    FileUtils.mkdir(dir) unless File.exist? dir

    name = @cdg_order.worm_name_resource
    begin
      arf = render_to_string pdf: "ARF_#{@cdg_order.pk_id}.pdf", template: "cdg_orders/arf.html", encoding: "UTF-8"
      arf_xml = render_to_string(template: 'cdg_orders/show_arf.xml.builder')
      order_xml = render_to_string(template: 'cdg_orders/show.xml.builder')

      FileUtils.cp @cdg_order.pickup_file, "#{dir}/#{@cdg_order.filename}"

      File.open("#{dir}/ARF_#{name}.pdf", 'wb') do |f|
        f.write(arf)
      end

      File.open("#{dir}/ARF_#{name}_ind.xml", 'w') do |f|
        f.write(arf_xml)
      end

      File.open("#{dir}/#{name}_ind.xml", 'w') do |f|
        f.write(order_xml)
      end
    rescue StandardError => exception
      cdg_order.worm_status = 'Failed'
      p exception
    else
      cdg_order.worm_status = 'Success'
    end
    # render partial: "order", collection: @cdg_orders, as: :cdg_order
    respond_to do |format|
      format.js
    end
  end

  def csv_reports
    @cdg_orders = CdgOrder.includes(:worm).where.not(worm: { id:  nil })
    respond_to do |format|
      format.csv do
        csv = render_to_string template: 'cdg_orders/worm_report'
        send_data csv, filename: 'worm-report.csv'
      end
    end
  end

  def ingest_worm_reports
    Dir.glob('public/reports/*.xml').each do |xml_file|
      doc = Nokogiri::XML(strip(xml_file))
      sname_arr = doc.css('response SNAME').first.content.split('-')
      attr = {
        sname: doc.css('response SNAME').first.content,
        sid: doc.css('response SID').first.content,
        ind_file: doc.css('response REQFILEPATH').first.nil? ? '' : doc.css('response REQFILEPATH').first.content,
        status: doc.css('response METASTATUS').first.nil? ? '' : doc.css('response METASTATUS').first.content,
        result: doc.css('response RESULT').first.nil? ? '' : doc.css('response RESULT').first.content,
        tracking_id: doc.css('response TRACKING_ID').first.nil? ? '' : doc.css('response TRACKING_ID').first.content,
        error_code: doc.css('response ERROR_CODE').first.nil? ? '' : doc.css('response ERROR_CODE').first.content,
        oid: doc.css('response OID').first.nil? ? '' : doc.css('response OID').first.content,
        oname: sname_arr.length > 1 ? sname_arr.first.strip : ''
      }
      order_id = sname_arr.length > 1 ? sname_arr.last.strip : ''
      unless order_id.blank?
        order = CdgOrder.find(order_id)
        if order.worm.nil?
          order.create_worm(attr)
        else
          order.worm.update(attr)
        end
        File.delete xml_file
      end
    end
    respond_to do |format|
      format.html { redirect_to action: :index, notice: 'reports read.' }
    end
  end

  def strip(file)
    # Read it
    file_str = File.read file

    file_str = file_str.gsub(/    /, "\t")
    file_str = file_str.gsub(/\"^[ \t]+|[ \t]+$/, "")
    file_str
  end

  # GET /cdg_orders/new
  def new
    @cdg_order = CdgOrder.new
  end

  # GET /cdg_orders/1/edit
  def edit
  end

  # POST /cdg_orders
  # POST /cdg_orders.json
  def create
    @cdg_order = CdgOrder.new(cdg_order_params)

    respond_to do |format|
      if @cdg_order.save
        format.html { redirect_to @cdg_order, notice: 'Cdg order was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_order }
      else
        format.html { render :new }
        format.json { render json: @cdg_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_orders/1
  # PATCH/PUT /cdg_orders/1.json
  def update
    respond_to do |format|
      if @cdg_order.update(cdg_order_params)
        format.html { redirect_to @cdg_order, notice: 'Cdg order was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_order }
      else
        format.html { render :edit }
        format.json { render json: @cdg_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_orders/1
  # DELETE /cdg_orders/1.json
  def destroy
    @cdg_order.destroy
    respond_to do |format|
      format.html { redirect_to cdg_orders_url, notice: 'Cdg order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_order
      @cdg_order = CdgOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_order_params
      params.require(:cdg_order).permit(:contact_email_address, :contact_name, :contact_phone, :cost, :date_created, :fk_creator_id, :fk_publication_type_id, :materials_close_date, :publication_name, :run_date, :seminar_date_time, :seminar_location, :speaker_name_and_title, :advisor_name, :fk_advisor_title_id, :advisor_phone, :branch_address1, :branch_city, :fk_branch_state_id, :fk_template_id, :fk_ad_size_id, :is_active, :comments, :date_downloaded, :date_submitted, :fk_order_status_id, :branch_address2, :branch_zip, :branch_id, :branch_name, :fk_source_branch_id, :fk_headline_id, :last_saved_page_name, :hi_res_uri, :last_preview, :fk_area_id, :fk_region_id, :fk_branch_id, :is_legacy, :fk_assistant_id, :faURL)
    end
end
