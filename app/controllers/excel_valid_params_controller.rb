class ExcelValidParamsController < ApplicationController
  before_action :set_excel_valid_param, only: [:show, :edit, :update, :destroy]

  # GET /excel_valid_params
  # GET /excel_valid_params.json
  def index
    @excel_valid_params = ExcelValidParam.all
  end

  # GET /excel_valid_params/1
  # GET /excel_valid_params/1.json
  def show
  end

  # GET /excel_valid_params/new
  def new
    @excel_valid_param = ExcelValidParam.new
  end

  # GET /excel_valid_params/1/edit
  def edit
  end

  # POST /excel_valid_params
  # POST /excel_valid_params.json
  def create
    @excel_valid_param = ExcelValidParam.new(excel_valid_param_params)

    respond_to do |format|
      if @excel_valid_param.save
        format.html { redirect_to @excel_valid_param, notice: 'Excel valid param was successfully created.' }
        format.json { render :show, status: :created, location: @excel_valid_param }
      else
        format.html { render :new }
        format.json { render json: @excel_valid_param.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /excel_valid_params/1
  # PATCH/PUT /excel_valid_params/1.json
  def update
    respond_to do |format|
      if @excel_valid_param.update(excel_valid_param_params)
        format.html { redirect_to @excel_valid_param, notice: 'Excel valid param was successfully updated.' }
        format.json { render :show, status: :ok, location: @excel_valid_param }
      else
        format.html { render :edit }
        format.json { render json: @excel_valid_param.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /excel_valid_params/1
  # DELETE /excel_valid_params/1.json
  def destroy
    @excel_valid_param.destroy
    respond_to do |format|
      format.html { redirect_to excel_valid_params_url, notice: 'Excel valid param was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_excel_valid_param
      @excel_valid_param = ExcelValidParam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def excel_valid_param_params
      params.require(:excel_valid_param).permit(:is_required, :excel_col_name, :excel_col_number, :type)
    end
end
