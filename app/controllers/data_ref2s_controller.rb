class DataRef2sController < ApplicationController
  before_action :set_data_ref2, only: [:show, :edit, :update, :destroy]

  # GET /data_ref2s
  # GET /data_ref2s.json
  def index
    @data_ref2s = DataRef2.all
  end

  # GET /data_ref2s/1
  # GET /data_ref2s/1.json
  def show
  end

  # GET /data_ref2s/new
  def new
    @data_ref2 = DataRef2.new
  end

  # GET /data_ref2s/1/edit
  def edit
  end

  # POST /data_ref2s
  # POST /data_ref2s.json
  def create
    @data_ref2 = DataRef2.new(data_ref2_params)

    respond_to do |format|
      if @data_ref2.save
        format.html { redirect_to @data_ref2, notice: 'Data ref2 was successfully created.' }
        format.json { render :show, status: :created, location: @data_ref2 }
      else
        format.html { render :new }
        format.json { render json: @data_ref2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_ref2s/1
  # PATCH/PUT /data_ref2s/1.json
  def update
    respond_to do |format|
      if @data_ref2.update(data_ref2_params)
        format.html { redirect_to @data_ref2, notice: 'Data ref2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_ref2 }
      else
        format.html { render :edit }
        format.json { render json: @data_ref2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_ref2s/1
  # DELETE /data_ref2s/1.json
  def destroy
    @data_ref2.destroy
    respond_to do |format|
      format.html { redirect_to data_ref2s_url, notice: 'Data ref2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_ref2
      @data_ref2 = DataRef2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_ref2_params
      params.require(:data_ref2).permit(:value, :type, :fk_type_id)
    end
end
