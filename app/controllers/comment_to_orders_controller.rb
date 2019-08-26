class CommentToOrdersController < ApplicationController
  before_action :set_comment_to_order, only: [:show, :edit, :update, :destroy]

  # GET /comment_to_orders
  # GET /comment_to_orders.json
  def index
    @comment_to_orders = CommentToOrder.all
  end

  # GET /comment_to_orders/1
  # GET /comment_to_orders/1.json
  def show
  end

  # GET /comment_to_orders/new
  def new
    @comment_to_order = CommentToOrder.new
  end

  # GET /comment_to_orders/1/edit
  def edit
  end

  # POST /comment_to_orders
  # POST /comment_to_orders.json
  def create
    @comment_to_order = CommentToOrder.new(comment_to_order_params)

    respond_to do |format|
      if @comment_to_order.save
        format.html { redirect_to @comment_to_order, notice: 'Comment to order was successfully created.' }
        format.json { render :show, status: :created, location: @comment_to_order }
      else
        format.html { render :new }
        format.json { render json: @comment_to_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comment_to_orders/1
  # PATCH/PUT /comment_to_orders/1.json
  def update
    respond_to do |format|
      if @comment_to_order.update(comment_to_order_params)
        format.html { redirect_to @comment_to_order, notice: 'Comment to order was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment_to_order }
      else
        format.html { render :edit }
        format.json { render json: @comment_to_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comment_to_orders/1
  # DELETE /comment_to_orders/1.json
  def destroy
    @comment_to_order.destroy
    respond_to do |format|
      format.html { redirect_to comment_to_orders_url, notice: 'Comment to order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_to_order
      @comment_to_order = CommentToOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_to_order_params
      params.require(:comment_to_order).permit(:cpkfk_comment_id, :cpkfk_order_id)
    end
end
