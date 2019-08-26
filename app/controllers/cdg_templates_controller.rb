class CdgTemplatesController < ApplicationController
  before_action :set_cdg_template, only: [:show, :edit, :update, :destroy]

  # GET /cdg_templates
  # GET /cdg_templates.json
  def index
    @cdg_templates = CdgTemplate.all
  end

  # GET /cdg_templates/1
  # GET /cdg_templates/1.json
  def show
  end

  # GET /cdg_templates/new
  def new
    @cdg_template = CdgTemplate.new
  end

  # GET /cdg_templates/1/edit
  def edit
  end

  # POST /cdg_templates
  # POST /cdg_templates.json
  def create
    @cdg_template = CdgTemplate.new(cdg_template_params)

    respond_to do |format|
      if @cdg_template.save
        format.html { redirect_to @cdg_template, notice: 'Cdg template was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_template }
      else
        format.html { render :new }
        format.json { render json: @cdg_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_templates/1
  # PATCH/PUT /cdg_templates/1.json
  def update
    respond_to do |format|
      if @cdg_template.update(cdg_template_params)
        format.html { redirect_to @cdg_template, notice: 'Cdg template was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_template }
      else
        format.html { render :edit }
        format.json { render json: @cdg_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_templates/1
  # DELETE /cdg_templates/1.json
  def destroy
    @cdg_template.destroy
    respond_to do |format|
      format.html { redirect_to cdg_templates_url, notice: 'Cdg template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_template
      @cdg_template = CdgTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_template_params
      params.require(:cdg_template).permit(:fk_ad_matrix_category_id, :code, :title, :is_active, :path, :version, :fk_ad_size, :fk_headline, :xml_info, :thumbnail_path, :instructions, :proxy_path, :pdf_filename, :mediatype_id, :tweenDuration, :tweenFrames)
    end
end
