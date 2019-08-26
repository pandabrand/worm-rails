class CdgOrderStatusesController < ApplicationController
  before_action :set_cdg_order_status, only: [:show, :edit, :update, :destroy]

  # GET /cdg_order_statuses
  # GET /cdg_order_statuses.json
  def index
    @cdg_order_statuses = CdgOrderStatus.all
  end

  # GET /cdg_order_statuses/1
  # GET /cdg_order_statuses/1.json
  def show
  end

  # GET /cdg_order_statuses/new
  def new
    @cdg_order_status = CdgOrderStatus.new
  end

  # GET /cdg_order_statuses/1/edit
  def edit
  end

  # POST /cdg_order_statuses
  # POST /cdg_order_statuses.json
  def create
    @cdg_order_status = CdgOrderStatus.new(cdg_order_status_params)

    respond_to do |format|
      if @cdg_order_status.save
        format.html { redirect_to @cdg_order_status, notice: 'Cdg order status was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_order_status }
      else
        format.html { render :new }
        format.json { render json: @cdg_order_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_order_statuses/1
  # PATCH/PUT /cdg_order_statuses/1.json
  def update
    respond_to do |format|
      if @cdg_order_status.update(cdg_order_status_params)
        format.html { redirect_to @cdg_order_status, notice: 'Cdg order status was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_order_status }
      else
        format.html { render :edit }
        format.json { render json: @cdg_order_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_order_statuses/1
  # DELETE /cdg_order_statuses/1.json
  def destroy
    @cdg_order_status.destroy
    respond_to do |format|
      format.html { redirect_to cdg_order_statuses_url, notice: 'Cdg order status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_order_status
      @cdg_order_status = CdgOrderStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_order_status_params
      params.require(:cdg_order_status).permit(:is_active, :name, :sort_order, :name_for_display)
    end
end
