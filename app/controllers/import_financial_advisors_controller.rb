class ImportFinancialAdvisorsController < ApplicationController
  before_action :set_import_financial_advisor, only: [:show, :edit, :update, :destroy]

  # GET /import_financial_advisors
  # GET /import_financial_advisors.json
  def index
    @import_financial_advisors = ImportFinancialAdvisor.all
  end

  # GET /import_financial_advisors/1
  # GET /import_financial_advisors/1.json
  def show
  end

  # GET /import_financial_advisors/new
  def new
    @import_financial_advisor = ImportFinancialAdvisor.new
  end

  # GET /import_financial_advisors/1/edit
  def edit
  end

  # POST /import_financial_advisors
  # POST /import_financial_advisors.json
  def create
    @import_financial_advisor = ImportFinancialAdvisor.new(import_financial_advisor_params)

    respond_to do |format|
      if @import_financial_advisor.save
        format.html { redirect_to @import_financial_advisor, notice: 'Import financial advisor was successfully created.' }
        format.json { render :show, status: :created, location: @import_financial_advisor }
      else
        format.html { render :new }
        format.json { render json: @import_financial_advisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_financial_advisors/1
  # PATCH/PUT /import_financial_advisors/1.json
  def update
    respond_to do |format|
      if @import_financial_advisor.update(import_financial_advisor_params)
        format.html { redirect_to @import_financial_advisor, notice: 'Import financial advisor was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_financial_advisor }
      else
        format.html { render :edit }
        format.json { render json: @import_financial_advisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_financial_advisors/1
  # DELETE /import_financial_advisors/1.json
  def destroy
    @import_financial_advisor.destroy
    respond_to do |format|
      format.html { redirect_to import_financial_advisors_url, notice: 'Import financial advisor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_financial_advisor
      @import_financial_advisor = ImportFinancialAdvisor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_financial_advisor_params
      params.require(:import_financial_advisor).permit(:branch_id, :emp_id, :financial_advisor_id, :first_name, :job_category, :last_name)
    end
end
