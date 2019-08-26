class ImportedFaNewsController < ApplicationController
  before_action :set_imported_fa_news, only: [:show, :edit, :update, :destroy]

  # GET /imported_fa_news
  # GET /imported_fa_news.json
  def index
    @imported_fa_news = ImportedFaNew.all
  end

  # GET /imported_fa_news/1
  # GET /imported_fa_news/1.json
  def show
  end

  # GET /imported_fa_news/new
  def new
    @imported_fa_news = ImportedFaNew.new
  end

  # GET /imported_fa_news/1/edit
  def edit
  end

  # POST /imported_fa_news
  # POST /imported_fa_news.json
  def create
    @imported_fa_news = ImportedFaNew.new(imported_fa_news_params)

    respond_to do |format|
      if @imported_fa_news.save
        format.html { redirect_to @imported_fa_news, notice: 'Imported fa new was successfully created.' }
        format.json { render :show, status: :created, location: @imported_fa_news }
      else
        format.html { render :new }
        format.json { render json: @imported_fa_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imported_fa_news/1
  # PATCH/PUT /imported_fa_news/1.json
  def update
    respond_to do |format|
      if @imported_fa_news.update(imported_fa_news_params)
        format.html { redirect_to @imported_fa_news, notice: 'Imported fa new was successfully updated.' }
        format.json { render :show, status: :ok, location: @imported_fa_news }
      else
        format.html { render :edit }
        format.json { render json: @imported_fa_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imported_fa_news/1
  # DELETE /imported_fa_news/1.json
  def destroy
    @imported_fa_news.destroy
    respond_to do |format|
      format.html { redirect_to imported_fa_news_url, notice: 'Imported fa new was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imported_fa_news
      @imported_fa_news = ImportedFaNew.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imported_fa_news_params
      params.require(:imported_fa_news).permit(:var_email, :var_division, :var_district, :var_branch, :var_firstname, :var_lastname, :var_empid, :var_jobcode, :var_jobtitle, :var_workaddressfull, :var_city, :var_state, :var_zip, :var_workphone, :var_firm, :var_region, :var_date_added)
    end
end
