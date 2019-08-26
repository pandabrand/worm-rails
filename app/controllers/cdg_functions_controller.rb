class CdgFunctionsController < ApplicationController
  before_action :set_cdg_function, only: [:show, :edit, :update, :destroy]

  # GET /cdg_functions
  # GET /cdg_functions.json
  def index
    @cdg_functions = CdgFunction.all
  end

  # GET /cdg_functions/1
  # GET /cdg_functions/1.json
  def show
  end

  # GET /cdg_functions/new
  def new
    @cdg_function = CdgFunction.new
  end

  # GET /cdg_functions/1/edit
  def edit
  end

  # POST /cdg_functions
  # POST /cdg_functions.json
  def create
    @cdg_function = CdgFunction.new(cdg_function_params)

    respond_to do |format|
      if @cdg_function.save
        format.html { redirect_to @cdg_function, notice: 'Cdg function was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_function }
      else
        format.html { render :new }
        format.json { render json: @cdg_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_functions/1
  # PATCH/PUT /cdg_functions/1.json
  def update
    respond_to do |format|
      if @cdg_function.update(cdg_function_params)
        format.html { redirect_to @cdg_function, notice: 'Cdg function was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_function }
      else
        format.html { render :edit }
        format.json { render json: @cdg_function.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_functions/1
  # DELETE /cdg_functions/1.json
  def destroy
    @cdg_function.destroy
    respond_to do |format|
      format.html { redirect_to cdg_functions_url, notice: 'Cdg function was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_function
      @cdg_function = CdgFunction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_function_params
      params.require(:cdg_function).permit(:sort_order, :name)
    end
end
