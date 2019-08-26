class LabAreasController < ApplicationController
  before_action :set_lab_area, only: [:show, :edit, :update, :destroy]

  # GET /lab_areas
  # GET /lab_areas.json
  def index
    @lab_areas = LabArea.all
  end

  # GET /lab_areas/1
  # GET /lab_areas/1.json
  def show
  end

  # GET /lab_areas/new
  def new
    @lab_area = LabArea.new
  end

  # GET /lab_areas/1/edit
  def edit
  end

  # POST /lab_areas
  # POST /lab_areas.json
  def create
    @lab_area = LabArea.new(lab_area_params)

    respond_to do |format|
      if @lab_area.save
        format.html { redirect_to @lab_area, notice: 'Lab area was successfully created.' }
        format.json { render :show, status: :created, location: @lab_area }
      else
        format.html { render :new }
        format.json { render json: @lab_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_areas/1
  # PATCH/PUT /lab_areas/1.json
  def update
    respond_to do |format|
      if @lab_area.update(lab_area_params)
        format.html { redirect_to @lab_area, notice: 'Lab area was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab_area }
      else
        format.html { render :edit }
        format.json { render json: @lab_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_areas/1
  # DELETE /lab_areas/1.json
  def destroy
    @lab_area.destroy
    respond_to do |format|
      format.html { redirect_to lab_areas_url, notice: 'Lab area was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_area
      @lab_area = LabArea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_area_params
      params.require(:lab_area).permit(:fk_region_id, :area_number, :is_active, :name, :sort_order)
    end
end
