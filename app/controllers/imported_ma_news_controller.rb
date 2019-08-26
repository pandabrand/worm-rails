class ImportedMaNewsController < ApplicationController
  before_action :set_imported_ma_news, only: [:show, :edit, :update, :destroy]

  # GET /imported_ma_news
  # GET /imported_ma_news.json
  def index
    @imported_ma_news = ImportedMaNew.all
  end

  # GET /imported_ma_news/1
  # GET /imported_ma_news/1.json
  def show
  end

  # GET /imported_ma_news/new
  def new
    @imported_ma_news = ImportedMaNew.new
  end

  # GET /imported_ma_news/1/edit
  def edit
  end

  # POST /imported_ma_news
  # POST /imported_ma_news.json
  def create
    @imported_ma_news = ImportedMaNew.new(imported_ma_news_params)

    respond_to do |format|
      if @imported_ma_news.save
        format.html { redirect_to @imported_ma_news, notice: 'Imported ma new was successfully created.' }
        format.json { render :show, status: :created, location: @imported_ma_news }
      else
        format.html { render :new }
        format.json { render json: @imported_ma_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imported_ma_news/1
  # PATCH/PUT /imported_ma_news/1.json
  def update
    respond_to do |format|
      if @imported_ma_news.update(imported_ma_news_params)
        format.html { redirect_to @imported_ma_news, notice: 'Imported ma new was successfully updated.' }
        format.json { render :show, status: :ok, location: @imported_ma_news }
      else
        format.html { render :edit }
        format.json { render json: @imported_ma_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imported_ma_news/1
  # DELETE /imported_ma_news/1.json
  def destroy
    @imported_ma_news.destroy
    respond_to do |format|
      format.html { redirect_to imported_ma_news_url, notice: 'Imported ma new was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imported_ma_news
      @imported_ma_news = ImportedMaNew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imported_ma_news_params
      params.require(:imported_ma_news).permit(:var_email, :var_division, :var_district, :var_branch, :var_firstname, :var_lastname, :var_empid, :var_jobcode, :var_jobtitle, :var_workaddressfull, :var_city, :var_state, :var_zip, :var_workphone, :var_firm, :var_region, :var_date_added)
    end
end
