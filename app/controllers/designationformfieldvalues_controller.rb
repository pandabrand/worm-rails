class DesignationformfieldvaluesController < ApplicationController
  before_action :set_designationformfieldvalue, only: [:show, :edit, :update, :destroy]

  # GET /designationformfieldvalues
  # GET /designationformfieldvalues.json
  def index
    @designationformfieldvalues = Designationformfieldvalue.all
  end

  # GET /designationformfieldvalues/1
  # GET /designationformfieldvalues/1.json
  def show
  end

  # GET /designationformfieldvalues/new
  def new
    @designationformfieldvalue = Designationformfieldvalue.new
  end

  # GET /designationformfieldvalues/1/edit
  def edit
  end

  # POST /designationformfieldvalues
  # POST /designationformfieldvalues.json
  def create
    @designationformfieldvalue = Designationformfieldvalue.new(designationformfieldvalue_params)

    respond_to do |format|
      if @designationformfieldvalue.save
        format.html { redirect_to @designationformfieldvalue, notice: 'Designationformfieldvalue was successfully created.' }
        format.json { render :show, status: :created, location: @designationformfieldvalue }
      else
        format.html { render :new }
        format.json { render json: @designationformfieldvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designationformfieldvalues/1
  # PATCH/PUT /designationformfieldvalues/1.json
  def update
    respond_to do |format|
      if @designationformfieldvalue.update(designationformfieldvalue_params)
        format.html { redirect_to @designationformfieldvalue, notice: 'Designationformfieldvalue was successfully updated.' }
        format.json { render :show, status: :ok, location: @designationformfieldvalue }
      else
        format.html { render :edit }
        format.json { render json: @designationformfieldvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designationformfieldvalues/1
  # DELETE /designationformfieldvalues/1.json
  def destroy
    @designationformfieldvalue.destroy
    respond_to do |format|
      format.html { redirect_to designationformfieldvalues_url, notice: 'Designationformfieldvalue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designationformfieldvalue
      @designationformfieldvalue = Designationformfieldvalue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def designationformfieldvalue_params
      params.require(:designationformfieldvalue).permit(:designationPk_id, :formFieldValuePkID)
    end
end
