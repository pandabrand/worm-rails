class LabRegionsController < ApplicationController
  before_action :set_lab_region, only: [:show, :edit, :update, :destroy]

  # GET /lab_regions
  # GET /lab_regions.json
  def index
    @lab_regions = LabRegion.all
  end

  # GET /lab_regions/1
  # GET /lab_regions/1.json
  def show
  end

  # GET /lab_regions/new
  def new
    @lab_region = LabRegion.new
  end

  # GET /lab_regions/1/edit
  def edit
  end

  # POST /lab_regions
  # POST /lab_regions.json
  def create
    @lab_region = LabRegion.new(lab_region_params)

    respond_to do |format|
      if @lab_region.save
        format.html { redirect_to @lab_region, notice: 'Lab region was successfully created.' }
        format.json { render :show, status: :created, location: @lab_region }
      else
        format.html { render :new }
        format.json { render json: @lab_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_regions/1
  # PATCH/PUT /lab_regions/1.json
  def update
    respond_to do |format|
      if @lab_region.update(lab_region_params)
        format.html { redirect_to @lab_region, notice: 'Lab region was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab_region }
      else
        format.html { render :edit }
        format.json { render json: @lab_region.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_regions/1
  # DELETE /lab_regions/1.json
  def destroy
    @lab_region.destroy
    respond_to do |format|
      format.html { redirect_to lab_regions_url, notice: 'Lab region was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_region
      @lab_region = LabRegion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_region_params
      params.require(:lab_region).permit(:is_active, :name, :region_id, :sort_order)
    end
end
