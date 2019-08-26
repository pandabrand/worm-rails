class LabComplexesController < ApplicationController
  before_action :set_lab_complex, only: [:show, :edit, :update, :destroy]

  # GET /lab_complexes
  # GET /lab_complexes.json
  def index
    @lab_complexes = LabComplex.all
  end

  # GET /lab_complexes/1
  # GET /lab_complexes/1.json
  def show
  end

  # GET /lab_complexes/new
  def new
    @lab_complex = LabComplex.new
  end

  # GET /lab_complexes/1/edit
  def edit
  end

  # POST /lab_complexes
  # POST /lab_complexes.json
  def create
    @lab_complex = LabComplex.new(lab_complex_params)

    respond_to do |format|
      if @lab_complex.save
        format.html { redirect_to @lab_complex, notice: 'Lab complex was successfully created.' }
        format.json { render :show, status: :created, location: @lab_complex }
      else
        format.html { render :new }
        format.json { render json: @lab_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_complexes/1
  # PATCH/PUT /lab_complexes/1.json
  def update
    respond_to do |format|
      if @lab_complex.update(lab_complex_params)
        format.html { redirect_to @lab_complex, notice: 'Lab complex was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab_complex }
      else
        format.html { render :edit }
        format.json { render json: @lab_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_complexes/1
  # DELETE /lab_complexes/1.json
  def destroy
    @lab_complex.destroy
    respond_to do |format|
      format.html { redirect_to lab_complexes_url, notice: 'Lab complex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_complex
      @lab_complex = LabComplex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_complex_params
      params.require(:lab_complex).permit(:fk_area_id, :is_active, :name, :area_name, :complex_id)
    end
end
