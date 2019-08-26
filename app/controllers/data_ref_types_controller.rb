class DataRefTypesController < ApplicationController
  before_action :set_data_ref_type, only: [:show, :edit, :update, :destroy]

  # GET /data_ref_types
  # GET /data_ref_types.json
  def index
    @data_ref_types = DataRefType.all
  end

  # GET /data_ref_types/1
  # GET /data_ref_types/1.json
  def show
  end

  # GET /data_ref_types/new
  def new
    @data_ref_type = DataRefType.new
  end

  # GET /data_ref_types/1/edit
  def edit
  end

  # POST /data_ref_types
  # POST /data_ref_types.json
  def create
    @data_ref_type = DataRefType.new(data_ref_type_params)

    respond_to do |format|
      if @data_ref_type.save
        format.html { redirect_to @data_ref_type, notice: 'Data ref type was successfully created.' }
        format.json { render :show, status: :created, location: @data_ref_type }
      else
        format.html { render :new }
        format.json { render json: @data_ref_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_ref_types/1
  # PATCH/PUT /data_ref_types/1.json
  def update
    respond_to do |format|
      if @data_ref_type.update(data_ref_type_params)
        format.html { redirect_to @data_ref_type, notice: 'Data ref type was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_ref_type }
      else
        format.html { render :edit }
        format.json { render json: @data_ref_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_ref_types/1
  # DELETE /data_ref_types/1.json
  def destroy
    @data_ref_type.destroy
    respond_to do |format|
      format.html { redirect_to data_ref_types_url, notice: 'Data ref type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_ref_type
      @data_ref_type = DataRefType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_ref_type_params
      params.require(:data_ref_type).permit(:name)
    end
end
