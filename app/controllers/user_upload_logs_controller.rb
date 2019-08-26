class UserUploadLogsController < ApplicationController
  before_action :set_user_upload_log, only: [:show, :edit, :update, :destroy]

  # GET /user_upload_logs
  # GET /user_upload_logs.json
  def index
    @user_upload_logs = UserUploadLog.all
  end

  # GET /user_upload_logs/1
  # GET /user_upload_logs/1.json
  def show
  end

  # GET /user_upload_logs/new
  def new
    @user_upload_log = UserUploadLog.new
  end

  # GET /user_upload_logs/1/edit
  def edit
  end

  # POST /user_upload_logs
  # POST /user_upload_logs.json
  def create
    @user_upload_log = UserUploadLog.new(user_upload_log_params)

    respond_to do |format|
      if @user_upload_log.save
        format.html { redirect_to @user_upload_log, notice: 'User upload log was successfully created.' }
        format.json { render :show, status: :created, location: @user_upload_log }
      else
        format.html { render :new }
        format.json { render json: @user_upload_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_upload_logs/1
  # PATCH/PUT /user_upload_logs/1.json
  def update
    respond_to do |format|
      if @user_upload_log.update(user_upload_log_params)
        format.html { redirect_to @user_upload_log, notice: 'User upload log was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_upload_log }
      else
        format.html { render :edit }
        format.json { render json: @user_upload_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_upload_logs/1
  # DELETE /user_upload_logs/1.json
  def destroy
    @user_upload_log.destroy
    respond_to do |format|
      format.html { redirect_to user_upload_logs_url, notice: 'User upload log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_upload_log
      @user_upload_log = UserUploadLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_upload_log_params
      params.require(:user_upload_log).permit(:fk_user_id, :type, :upload_date)
    end
end
