class AdditionalRunDatesController < ApplicationController
  before_action :set_additional_run_date, only: [:show, :edit, :update, :destroy]

  # GET /additional_run_dates
  # GET /additional_run_dates.json
  def index
    @additional_run_dates = AdditionalRunDate.all
  end

  # GET /additional_run_dates/1
  # GET /additional_run_dates/1.json
  def show
  end

  # GET /additional_run_dates/new
  def new
    @additional_run_date = AdditionalRunDate.new
  end

  # GET /additional_run_dates/1/edit
  def edit
  end

  # POST /additional_run_dates
  # POST /additional_run_dates.json
  def create
    @additional_run_date = AdditionalRunDate.new(additional_run_date_params)

    respond_to do |format|
      if @additional_run_date.save
        format.html { redirect_to @additional_run_date, notice: 'Additional run date was successfully created.' }
        format.json { render :show, status: :created, location: @additional_run_date }
      else
        format.html { render :new }
        format.json { render json: @additional_run_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /additional_run_dates/1
  # PATCH/PUT /additional_run_dates/1.json
  def update
    respond_to do |format|
      if @additional_run_date.update(additional_run_date_params)
        format.html { redirect_to @additional_run_date, notice: 'Additional run date was successfully updated.' }
        format.json { render :show, status: :ok, location: @additional_run_date }
      else
        format.html { render :edit }
        format.json { render json: @additional_run_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additional_run_dates/1
  # DELETE /additional_run_dates/1.json
  def destroy
    @additional_run_date.destroy
    respond_to do |format|
      format.html { redirect_to additional_run_dates_url, notice: 'Additional run date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additional_run_date
      @additional_run_date = AdditionalRunDate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def additional_run_date_params
      params.require(:additional_run_date).permit(:pk_id, :run_date, :fk_order_id)
    end
end
