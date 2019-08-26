class HeadlinecolortypesController < ApplicationController
  before_action :set_headlinecolortype, only: [:show, :edit, :update, :destroy]

  # GET /headlinecolortypes
  # GET /headlinecolortypes.json
  def index
    @headlinecolortypes = Headlinecolortype.all
  end

  # GET /headlinecolortypes/1
  # GET /headlinecolortypes/1.json
  def show
  end

  # GET /headlinecolortypes/new
  def new
    @headlinecolortype = Headlinecolortype.new
  end

  # GET /headlinecolortypes/1/edit
  def edit
  end

  # POST /headlinecolortypes
  # POST /headlinecolortypes.json
  def create
    @headlinecolortype = Headlinecolortype.new(headlinecolortype_params)

    respond_to do |format|
      if @headlinecolortype.save
        format.html { redirect_to @headlinecolortype, notice: 'Headlinecolortype was successfully created.' }
        format.json { render :show, status: :created, location: @headlinecolortype }
      else
        format.html { render :new }
        format.json { render json: @headlinecolortype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /headlinecolortypes/1
  # PATCH/PUT /headlinecolortypes/1.json
  def update
    respond_to do |format|
      if @headlinecolortype.update(headlinecolortype_params)
        format.html { redirect_to @headlinecolortype, notice: 'Headlinecolortype was successfully updated.' }
        format.json { render :show, status: :ok, location: @headlinecolortype }
      else
        format.html { render :edit }
        format.json { render json: @headlinecolortype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headlinecolortypes/1
  # DELETE /headlinecolortypes/1.json
  def destroy
    @headlinecolortype.destroy
    respond_to do |format|
      format.html { redirect_to headlinecolortypes_url, notice: 'Headlinecolortype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_headlinecolortype
      @headlinecolortype = Headlinecolortype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def headlinecolortype_params
      params.require(:headlinecolortype).permit(:name)
    end
end
