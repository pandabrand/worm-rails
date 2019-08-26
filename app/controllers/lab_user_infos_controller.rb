class LabUserInfosController < ApplicationController
  before_action :set_lab_user_info, only: [:show, :edit, :update, :destroy]

  # GET /lab_user_infos
  # GET /lab_user_infos.json
  def index
    @lab_user_infos = LabUserInfo.all
  end

  # GET /lab_user_infos/1
  # GET /lab_user_infos/1.json
  def show
  end

  # GET /lab_user_infos/new
  def new
    @lab_user_info = LabUserInfo.new
  end

  # GET /lab_user_infos/1/edit
  def edit
  end

  # POST /lab_user_infos
  # POST /lab_user_infos.json
  def create
    @lab_user_info = LabUserInfo.new(lab_user_info_params)

    respond_to do |format|
      if @lab_user_info.save
        format.html { redirect_to @lab_user_info, notice: 'Lab user info was successfully created.' }
        format.json { render :show, status: :created, location: @lab_user_info }
      else
        format.html { render :new }
        format.json { render json: @lab_user_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_user_infos/1
  # PATCH/PUT /lab_user_infos/1.json
  def update
    respond_to do |format|
      if @lab_user_info.update(lab_user_info_params)
        format.html { redirect_to @lab_user_info, notice: 'Lab user info was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab_user_info }
      else
        format.html { render :edit }
        format.json { render json: @lab_user_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_user_infos/1
  # DELETE /lab_user_infos/1.json
  def destroy
    @lab_user_info.destroy
    respond_to do |format|
      format.html { redirect_to lab_user_infos_url, notice: 'Lab user info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_user_info
      @lab_user_info = LabUserInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_user_info_params
      params.require(:lab_user_info).permit(:date_created, :date_modified, :is_active, :name_last, :name_first, :alternate_address_1, :alternate_address_2, :alternate_city, :alternate_zip, :business_fax, :business_phone, :employee_id, :financial_advisor_id, :fk_alternate_us_state_id, :fk_branch_id, :fk_country_id, :fk_title1_id, :fk_title2_id, :fk_region_id, :fk_area_id, :assistant_email, :fk_roletitle_id, :fk_client_id, :fkTitle3ID)
    end
end
