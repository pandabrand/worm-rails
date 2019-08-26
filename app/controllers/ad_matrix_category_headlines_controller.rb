class AdMatrixCategoryHeadlinesController < ApplicationController
  before_action :set_ad_matrix_category_headline, only: [:show, :edit, :update, :destroy]

  # GET /ad_matrix_category_headlines
  # GET /ad_matrix_category_headlines.json
  def index
    @ad_matrix_category_headlines = AdMatrixCategoryHeadline.all
  end

  # GET /ad_matrix_category_headlines/1
  # GET /ad_matrix_category_headlines/1.json
  def show
  end

  # GET /ad_matrix_category_headlines/new
  def new
    @ad_matrix_category_headline = AdMatrixCategoryHeadline.new
  end

  # GET /ad_matrix_category_headlines/1/edit
  def edit
  end

  # POST /ad_matrix_category_headlines
  # POST /ad_matrix_category_headlines.json
  def create
    @ad_matrix_category_headline = AdMatrixCategoryHeadline.new(ad_matrix_category_headline_params)

    respond_to do |format|
      if @ad_matrix_category_headline.save
        format.html { redirect_to @ad_matrix_category_headline, notice: 'Ad matrix category headline was successfully created.' }
        format.json { render :show, status: :created, location: @ad_matrix_category_headline }
      else
        format.html { render :new }
        format.json { render json: @ad_matrix_category_headline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_matrix_category_headlines/1
  # PATCH/PUT /ad_matrix_category_headlines/1.json
  def update
    respond_to do |format|
      if @ad_matrix_category_headline.update(ad_matrix_category_headline_params)
        format.html { redirect_to @ad_matrix_category_headline, notice: 'Ad matrix category headline was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad_matrix_category_headline }
      else
        format.html { render :edit }
        format.json { render json: @ad_matrix_category_headline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_matrix_category_headlines/1
  # DELETE /ad_matrix_category_headlines/1.json
  def destroy
    @ad_matrix_category_headline.destroy
    respond_to do |format|
      format.html { redirect_to ad_matrix_category_headlines_url, notice: 'Ad matrix category headline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_matrix_category_headline
      @ad_matrix_category_headline = AdMatrixCategoryHeadline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_matrix_category_headline_params
      params.require(:ad_matrix_category_headline).permit(:ad_matrix_pk_id, :headline_pk_id)
    end
end
