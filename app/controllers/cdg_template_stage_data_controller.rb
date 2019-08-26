class CdgTemplateStageDataController < ApplicationController
  before_action :set_cdg_template_stage_datum, only: [:show, :edit, :update, :destroy]

  # GET /cdg_template_stage_data
  # GET /cdg_template_stage_data.json
  def index
    @cdg_template_stage_data = CdgTemplateStageDatum.all
  end

  # GET /cdg_template_stage_data/1
  # GET /cdg_template_stage_data/1.json
  def show
  end

  # GET /cdg_template_stage_data/new
  def new
    @cdg_template_stage_datum = CdgTemplateStageDatum.new
  end

  # GET /cdg_template_stage_data/1/edit
  def edit
  end

  # POST /cdg_template_stage_data
  # POST /cdg_template_stage_data.json
  def create
    @cdg_template_stage_datum = CdgTemplateStageDatum.new(cdg_template_stage_datum_params)

    respond_to do |format|
      if @cdg_template_stage_datum.save
        format.html { redirect_to @cdg_template_stage_datum, notice: 'Cdg template stage datum was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_template_stage_datum }
      else
        format.html { render :new }
        format.json { render json: @cdg_template_stage_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_template_stage_data/1
  # PATCH/PUT /cdg_template_stage_data/1.json
  def update
    respond_to do |format|
      if @cdg_template_stage_datum.update(cdg_template_stage_datum_params)
        format.html { redirect_to @cdg_template_stage_datum, notice: 'Cdg template stage datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_template_stage_datum }
      else
        format.html { render :edit }
        format.json { render json: @cdg_template_stage_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_template_stage_data/1
  # DELETE /cdg_template_stage_data/1.json
  def destroy
    @cdg_template_stage_datum.destroy
    respond_to do |format|
      format.html { redirect_to cdg_template_stage_data_url, notice: 'Cdg template stage datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_template_stage_datum
      @cdg_template_stage_datum = CdgTemplateStageDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_template_stage_datum_params
      params.require(:cdg_template_stage_datum).permit(:fk_ad_matrix_category_id, :code, :title, :is_active, :path, :version, :fk_ad_size, :fk_headline, :xml_info, :thumbnail_path, :instructions, :proxy_path, :pdf_filename)
    end
end
