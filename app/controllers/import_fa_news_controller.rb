class ImportFaNewsController < ApplicationController
  before_action :set_import_fa_news, only: [:show, :edit, :update, :destroy]

  # GET /import_fa_news
  # GET /import_fa_news.json
  def index
    @import_fa_news = ImportFaNew.all
  end

  # GET /import_fa_news/1
  # GET /import_fa_news/1.json
  def show
  end

  # GET /import_fa_news/new
  def new
    @import_fa_news = ImportFaNew.new
  end

  # GET /import_fa_news/1/edit
  def edit
  end

  # POST /import_fa_news
  # POST /import_fa_news.json
  def create
    @import_fa_news = ImportFaNew.new(import_fa_news_params)

    respond_to do |format|
      if @import_fa_news.save
        format.html { redirect_to @import_fa_news, notice: 'Import fa new was successfully created.' }
        format.json { render :show, status: :created, location: @import_fa_news }
      else
        format.html { render :new }
        format.json { render json: @import_fa_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_fa_news/1
  # PATCH/PUT /import_fa_news/1.json
  def update
    respond_to do |format|
      if @import_fa_news.update(import_fa_news_params)
        format.html { redirect_to @import_fa_news, notice: 'Import fa new was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_fa_news }
      else
        format.html { render :edit }
        format.json { render json: @import_fa_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_fa_news/1
  # DELETE /import_fa_news/1.json
  def destroy
    @import_fa_news.destroy
    respond_to do |format|
      format.html { redirect_to import_fa_news_url, notice: 'Import fa new was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_fa_news
      @import_fa_news = ImportFaNew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_fa_news_params
      params.require(:import_fa_news).permit(:var_division, :var_district, :var_branch, :var_lastname, :var_firstname, :var_empid, :var_jobtitle, :var_jobcode, :var_address1, :var_address2, :var_city, :var_state, :var_zip, :var_email, :var_workphone, :var_firm, :var_region, :var_workaddressfull, :var_date_added, :var_address3, :complex_id, :complex_name)
    end
end
