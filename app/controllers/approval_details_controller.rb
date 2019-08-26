class ApprovalDetailsController < ApplicationController
  before_action :set_approval_detail, only: [:show, :edit, :update, :destroy]

  # GET /approval_details
  # GET /approval_details.json
  def index
    @approval_details = ApprovalDetail.all
  end

  # GET /approval_details/1
  # GET /approval_details/1.json
  def show
  end

  # GET /approval_details/new
  def new
    @approval_detail = ApprovalDetail.new
  end

  # GET /approval_details/1/edit
  def edit
  end

  # POST /approval_details
  # POST /approval_details.json
  def create
    @approval_detail = ApprovalDetail.new(approval_detail_params)

    respond_to do |format|
      if @approval_detail.save
        format.html { redirect_to @approval_detail, notice: 'Approval detail was successfully created.' }
        format.json { render :show, status: :created, location: @approval_detail }
      else
        format.html { render :new }
        format.json { render json: @approval_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /approval_details/1
  # PATCH/PUT /approval_details/1.json
  def update
    respond_to do |format|
      if @approval_detail.update(approval_detail_params)
        format.html { redirect_to @approval_detail, notice: 'Approval detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @approval_detail }
      else
        format.html { render :edit }
        format.json { render json: @approval_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /approval_details/1
  # DELETE /approval_details/1.json
  def destroy
    @approval_detail.destroy
    respond_to do |format|
      format.html { redirect_to approval_details_url, notice: 'Approval detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approval_detail
      @approval_detail = ApprovalDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def approval_detail_params
      params.require(:approval_detail).permit(:fk_role_id, :comments, :date_created, :fk_order_id, :fk_order_item_id, :fk_user_id, :fk_work_activity_instance_id, :media_id, :order_number, :status_description, :user_name, :user_role, :fk_assistant_id)
    end
end
