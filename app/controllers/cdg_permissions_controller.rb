class CdgPermissionsController < ApplicationController
  before_action :set_cdg_permission, only: [:show, :edit, :update, :destroy]

  # GET /cdg_permissions
  # GET /cdg_permissions.json
  def index
    @cdg_permissions = CdgPermission.all
  end

  # GET /cdg_permissions/1
  # GET /cdg_permissions/1.json
  def show
  end

  # GET /cdg_permissions/new
  def new
    @cdg_permission = CdgPermission.new
  end

  # GET /cdg_permissions/1/edit
  def edit
  end

  # POST /cdg_permissions
  # POST /cdg_permissions.json
  def create
    @cdg_permission = CdgPermission.new(cdg_permission_params)

    respond_to do |format|
      if @cdg_permission.save
        format.html { redirect_to @cdg_permission, notice: 'Cdg permission was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_permission }
      else
        format.html { render :new }
        format.json { render json: @cdg_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_permissions/1
  # PATCH/PUT /cdg_permissions/1.json
  def update
    respond_to do |format|
      if @cdg_permission.update(cdg_permission_params)
        format.html { redirect_to @cdg_permission, notice: 'Cdg permission was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_permission }
      else
        format.html { render :edit }
        format.json { render json: @cdg_permission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_permissions/1
  # DELETE /cdg_permissions/1.json
  def destroy
    @cdg_permission.destroy
    respond_to do |format|
      format.html { redirect_to cdg_permissions_url, notice: 'Cdg permission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_permission
      @cdg_permission = CdgPermission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_permission_params
      params.require(:cdg_permission).permit(:agent_type, :fk_user_agent_id, :fk_function_resource_id, :permission, :resource_type, :is_active, :fk_role_agent_id, :fk_function_group_resource_id, :fk_nav_menu_item_resource_id, :fk_permission_type_id)
    end
end
