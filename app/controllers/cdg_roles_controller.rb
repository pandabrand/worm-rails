class CdgRolesController < ApplicationController
  before_action :set_cdg_role, only: [:show, :edit, :update, :destroy]

  # GET /cdg_roles
  # GET /cdg_roles.json
  def index
    @cdg_roles = CdgRole.all
  end

  # GET /cdg_roles/1
  # GET /cdg_roles/1.json
  def show
  end

  # GET /cdg_roles/new
  def new
    @cdg_role = CdgRole.new
  end

  # GET /cdg_roles/1/edit
  def edit
  end

  # POST /cdg_roles
  # POST /cdg_roles.json
  def create
    @cdg_role = CdgRole.new(cdg_role_params)

    respond_to do |format|
      if @cdg_role.save
        format.html { redirect_to @cdg_role, notice: 'Cdg role was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_role }
      else
        format.html { render :new }
        format.json { render json: @cdg_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_roles/1
  # PATCH/PUT /cdg_roles/1.json
  def update
    respond_to do |format|
      if @cdg_role.update(cdg_role_params)
        format.html { redirect_to @cdg_role, notice: 'Cdg role was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_role }
      else
        format.html { render :edit }
        format.json { render json: @cdg_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_roles/1
  # DELETE /cdg_roles/1.json
  def destroy
    @cdg_role.destroy
    respond_to do |format|
      format.html { redirect_to cdg_roles_url, notice: 'Cdg role was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_role
      @cdg_role = CdgRole.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_role_params
      params.require(:cdg_role).permit(:is_active, :name, :sort_order)
    end
end
