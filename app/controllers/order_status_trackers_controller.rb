class OrderStatusTrackersController < ApplicationController
  before_action :set_order_status_tracker, only: [:show, :edit, :update, :destroy]

  # GET /order_status_trackers
  # GET /order_status_trackers.json
  def index
    @order_status_trackers = OrderStatusTracker.all
  end

  # GET /order_status_trackers/1
  # GET /order_status_trackers/1.json
  def show
  end

  # GET /order_status_trackers/new
  def new
    @order_status_tracker = OrderStatusTracker.new
  end

  # GET /order_status_trackers/1/edit
  def edit
  end

  # POST /order_status_trackers
  # POST /order_status_trackers.json
  def create
    @order_status_tracker = OrderStatusTracker.new(order_status_tracker_params)

    respond_to do |format|
      if @order_status_tracker.save
        format.html { redirect_to @order_status_tracker, notice: 'Order status tracker was successfully created.' }
        format.json { render :show, status: :created, location: @order_status_tracker }
      else
        format.html { render :new }
        format.json { render json: @order_status_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_status_trackers/1
  # PATCH/PUT /order_status_trackers/1.json
  def update
    respond_to do |format|
      if @order_status_tracker.update(order_status_tracker_params)
        format.html { redirect_to @order_status_tracker, notice: 'Order status tracker was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_status_tracker }
      else
        format.html { render :edit }
        format.json { render json: @order_status_tracker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_status_trackers/1
  # DELETE /order_status_trackers/1.json
  def destroy
    @order_status_tracker.destroy
    respond_to do |format|
      format.html { redirect_to order_status_trackers_url, notice: 'Order status tracker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_status_tracker
      @order_status_tracker = OrderStatusTracker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_status_tracker_params
      params.require(:order_status_tracker).permit(:fk_order_status_id, :date_submitted, :fk_order_id)
    end
end
