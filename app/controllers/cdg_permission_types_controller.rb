class CdgPermissionTypesController < ApplicationController
  before_action :set_cdg_permission_type, only: [:show, :edit, :update, :destroy]

  # GET /cdg_permission_types
  # GET /cdg_permission_types.json
  def index
    @cdg_permission_types = CdgPermissionType.all
  end

  # GET /cdg_permission_types/1
  # GET /cdg_permission_types/1.json
  def show
  end

  # GET /cdg_permission_types/new
  def new
    @cdg_permission_type = CdgPermissionType.new
  end

  # GET /cdg_permission_types/1/edit
  def edit
  end

  # POST /cdg_permission_types
  # POST /cdg_permission_types.json
  def create
    @cdg_permission_type = CdgPermissionType.new(cdg_permission_type_params)

    respond_to do |format|
      if @cdg_permission_type.save
        format.html { redirect_to @cdg_permission_type, notice: 'Cdg permission type was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_permission_type }
      else
        format.html { render :new }
        format.json { render json: @cdg_permission_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_permission_types/1
  # PATCH/PUT /cdg_permission_types/1.json
  def update
    respond_to do |format|
      if @cdg_permission_type.update(cdg_permission_type_params)
        format.html { redirect_to @cdg_permission_type, notice: 'Cdg permission type was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_permission_type }
      else
        format.html { render :edit }
        format.json { render json: @cdg_permission_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_permission_types/1
  # DELETE /cdg_permission_types/1.json
  def destroy
    @cdg_permission_type.destroy
    respond_to do |format|
      format.html { redirect_to cdg_permission_types_url, notice: 'Cdg permission type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_permission_type
      @cdg_permission_type = CdgPermissionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_permission_type_params
      params.require(:cdg_permission_type).permit(:sort_order, :is_active, :name, :fk_permission_type_id)
    end
end
