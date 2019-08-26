class DataRefsController < ApplicationController
  before_action :set_data_ref, only: [:show, :edit, :update, :destroy]

  # GET /data_refs
  # GET /data_refs.json
  def index
    @data_refs = DataRef.all
  end

  # GET /data_refs/1
  # GET /data_refs/1.json
  def show
  end

  # GET /data_refs/new
  def new
    @data_ref = DataRef.new
  end

  # GET /data_refs/1/edit
  def edit
  end

  # POST /data_refs
  # POST /data_refs.json
  def create
    @data_ref = DataRef.new(data_ref_params)

    respond_to do |format|
      if @data_ref.save
        format.html { redirect_to @data_ref, notice: 'Data ref was successfully created.' }
        format.json { render :show, status: :created, location: @data_ref }
      else
        format.html { render :new }
        format.json { render json: @data_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_refs/1
  # PATCH/PUT /data_refs/1.json
  def update
    respond_to do |format|
      if @data_ref.update(data_ref_params)
        format.html { redirect_to @data_ref, notice: 'Data ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_ref }
      else
        format.html { render :edit }
        format.json { render json: @data_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_refs/1
  # DELETE /data_refs/1.json
  def destroy
    @data_ref.destroy
    respond_to do |format|
      format.html { redirect_to data_refs_url, notice: 'Data ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_ref
      @data_ref = DataRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_ref_params
      params.require(:data_ref).permit(:value, :type, :fk_type_id)
    end
end
