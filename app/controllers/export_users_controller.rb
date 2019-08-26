class ExportUsersController < ApplicationController
  before_action :set_export_user, only: [:show, :edit, :update, :destroy]

  # GET /export_users
  # GET /export_users.json
  def index
    @export_users = ExportUser.all
  end

  # GET /export_users/1
  # GET /export_users/1.json
  def show
  end

  # GET /export_users/new
  def new
    @export_user = ExportUser.new
  end

  # GET /export_users/1/edit
  def edit
  end

  # POST /export_users
  # POST /export_users.json
  def create
    @export_user = ExportUser.new(export_user_params)

    respond_to do |format|
      if @export_user.save
        format.html { redirect_to @export_user, notice: 'Export user was successfully created.' }
        format.json { render :show, status: :created, location: @export_user }
      else
        format.html { render :new }
        format.json { render json: @export_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /export_users/1
  # PATCH/PUT /export_users/1.json
  def update
    respond_to do |format|
      if @export_user.update(export_user_params)
        format.html { redirect_to @export_user, notice: 'Export user was successfully updated.' }
        format.json { render :show, status: :ok, location: @export_user }
      else
        format.html { render :edit }
        format.json { render json: @export_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /export_users/1
  # DELETE /export_users/1.json
  def destroy
    @export_user.destroy
    respond_to do |format|
      format.html { redirect_to export_users_url, notice: 'Export user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_export_user
      @export_user = ExportUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def export_user_params
      params.require(:export_user).permit(:emp_id, :branch_id, :region_id, :last_name, :first_name, :job_title, :email_address, :fk_user_id, :financial_advisor_id, :area_id)
    end
end
