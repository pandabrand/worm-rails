class LabAdSizesController < ApplicationController
  before_action :set_lab_ad_size, only: [:show, :edit, :update, :destroy]

  # GET /lab_ad_sizes
  # GET /lab_ad_sizes.json
  def index
    @lab_ad_sizes = LabAdSize.all
  end

  # GET /lab_ad_sizes/1
  # GET /lab_ad_sizes/1.json
  def show
  end

  # GET /lab_ad_sizes/new
  def new
    @lab_ad_size = LabAdSize.new
  end

  # GET /lab_ad_sizes/1/edit
  def edit
  end

  # POST /lab_ad_sizes
  # POST /lab_ad_sizes.json
  def create
    @lab_ad_size = LabAdSize.new(lab_ad_size_params)

    respond_to do |format|
      if @lab_ad_size.save
        format.html { redirect_to @lab_ad_size, notice: 'Lab ad size was successfully created.' }
        format.json { render :show, status: :created, location: @lab_ad_size }
      else
        format.html { render :new }
        format.json { render json: @lab_ad_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_ad_sizes/1
  # PATCH/PUT /lab_ad_sizes/1.json
  def update
    respond_to do |format|
      if @lab_ad_size.update(lab_ad_size_params)
        format.html { redirect_to @lab_ad_size, notice: 'Lab ad size was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab_ad_size }
      else
        format.html { render :edit }
        format.json { render json: @lab_ad_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_ad_sizes/1
  # DELETE /lab_ad_sizes/1.json
  def destroy
    @lab_ad_size.destroy
    respond_to do |format|
      format.html { redirect_to lab_ad_sizes_url, notice: 'Lab ad size was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_ad_size
      @lab_ad_size = LabAdSize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_ad_size_params
      params.require(:lab_ad_size).permit(:is_active, :size_name, :sort_order, :mediaTypeID)
    end
end
