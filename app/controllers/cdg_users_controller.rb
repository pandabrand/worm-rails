class CdgUsersController < ApplicationController
  before_action :set_cdg_user, only: [:show, :edit, :update, :destroy]

  # GET /cdg_users
  # GET /cdg_users.json
  def index
    @cdg_users = CdgUser.paginate(page: params[:page])
  end

  # GET /cdg_users/1
  # GET /cdg_users/1.json
  def show
  end

  # GET /cdg_users/new
  def new
    @cdg_user = CdgUser.new
  end

  # GET /cdg_users/1/edit
  def edit
  end

  # POST /cdg_users
  # POST /cdg_users.json
  def create
    @cdg_user = CdgUser.new(cdg_user_params)

    respond_to do |format|
      if @cdg_user.save
        format.html { redirect_to @cdg_user, notice: 'Cdg user was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_user }
      else
        format.html { render :new }
        format.json { render json: @cdg_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_users/1
  # PATCH/PUT /cdg_users/1.json
  def update
    respond_to do |format|
      if @cdg_user.update(cdg_user_params)
        format.html { redirect_to @cdg_user, notice: 'Cdg user was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_user }
      else
        format.html { render :edit }
        format.json { render json: @cdg_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_users/1
  # DELETE /cdg_users/1.json
  def destroy
    @cdg_user.destroy
    respond_to do |format|
      format.html { redirect_to cdg_users_url, notice: 'Cdg user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_user
      @cdg_user = CdgUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_user_params
      params.require(:cdg_user).permit(:date_created, :date_modified, :password, :username, :is_active, :fk_user_info_id, :date_last_logged_in, :skip_login_profile_page, :new_login, :fk_user_id)
    end
end
