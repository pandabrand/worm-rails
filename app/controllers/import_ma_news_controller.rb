class ImportMaNewsController < ApplicationController
  before_action :set_import_ma_news, only: [:show, :edit, :update, :destroy]

  # GET /import_ma_news
  # GET /import_ma_news.json
  def index
    @import_ma_news = ImportMaNew.all
  end

  # GET /import_ma_news/1
  # GET /import_ma_news/1.json
  def show
  end

  # GET /import_ma_news/new
  def new
    @import_ma_news = ImportMaNew.new
  end

  # GET /import_ma_news/1/edit
  def edit
  end

  # POST /import_ma_news
  # POST /import_ma_news.json
  def create
    @import_ma_news = ImportMaNew.new(import_ma_news_params)

    respond_to do |format|
      if @import_ma_news.save
        format.html { redirect_to @import_ma_news, notice: 'Import ma new was successfully created.' }
        format.json { render :show, status: :created, location: @import_ma_news }
      else
        format.html { render :new }
        format.json { render json: @import_ma_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_ma_news/1
  # PATCH/PUT /import_ma_news/1.json
  def update
    respond_to do |format|
      if @import_ma_news.update(import_ma_news_params)
        format.html { redirect_to @import_ma_news, notice: 'Import ma new was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_ma_news }
      else
        format.html { render :edit }
        format.json { render json: @import_ma_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_ma_news/1
  # DELETE /import_ma_news/1.json
  def destroy
    @import_ma_news.destroy
    respond_to do |format|
      format.html { redirect_to import_ma_news_url, notice: 'Import ma new was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_ma_news
      @import_ma_news = ImportMaNew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_ma_news_params
      params.require(:import_ma_news).permit(:var_division, :var_district, :var_branch, :var_lastname, :var_firstname, :var_empid, :var_jobtitle, :var_jobcode, :var_address1, :var_address2, :var_city, :var_state, :var_zip, :var_email, :var_workphone, :var_firm, :var_region, :var_workaddressfull, :var_date_added, :complex_id, :complex_name)
    end
end
