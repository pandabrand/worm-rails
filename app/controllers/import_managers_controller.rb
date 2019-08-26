class ImportManagersController < ApplicationController
  before_action :set_import_manager, only: [:show, :edit, :update, :destroy]

  # GET /import_managers
  # GET /import_managers.json
  def index
    @import_managers = ImportManager.all
  end

  # GET /import_managers/1
  # GET /import_managers/1.json
  def show
  end

  # GET /import_managers/new
  def new
    @import_manager = ImportManager.new
  end

  # GET /import_managers/1/edit
  def edit
  end

  # POST /import_managers
  # POST /import_managers.json
  def create
    @import_manager = ImportManager.new(import_manager_params)

    respond_to do |format|
      if @import_manager.save
        format.html { redirect_to @import_manager, notice: 'Import manager was successfully created.' }
        format.json { render :show, status: :created, location: @import_manager }
      else
        format.html { render :new }
        format.json { render json: @import_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_managers/1
  # PATCH/PUT /import_managers/1.json
  def update
    respond_to do |format|
      if @import_manager.update(import_manager_params)
        format.html { redirect_to @import_manager, notice: 'Import manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_manager }
      else
        format.html { render :edit }
        format.json { render json: @import_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_managers/1
  # DELETE /import_managers/1.json
  def destroy
    @import_manager.destroy
    respond_to do |format|
      format.html { redirect_to import_managers_url, notice: 'Import manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_manager
      @import_manager = ImportManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_manager_params
      params.require(:import_manager).permit(:address, :area_id, :branch_id, :city, :emp_id, :first_name, :job_category, :last_name, :region_id, :state, :work_phone, :zip)
    end
end
