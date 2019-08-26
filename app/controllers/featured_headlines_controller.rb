class FeaturedHeadlinesController < ApplicationController
  before_action :set_featured_headline, only: [:show, :edit, :update, :destroy]

  # GET /featured_headlines
  # GET /featured_headlines.json
  def index
    @featured_headlines = FeaturedHeadline.all
  end

  # GET /featured_headlines/1
  # GET /featured_headlines/1.json
  def show
  end

  # GET /featured_headlines/new
  def new
    @featured_headline = FeaturedHeadline.new
  end

  # GET /featured_headlines/1/edit
  def edit
  end

  # POST /featured_headlines
  # POST /featured_headlines.json
  def create
    @featured_headline = FeaturedHeadline.new(featured_headline_params)

    respond_to do |format|
      if @featured_headline.save
        format.html { redirect_to @featured_headline, notice: 'Featured headline was successfully created.' }
        format.json { render :show, status: :created, location: @featured_headline }
      else
        format.html { render :new }
        format.json { render json: @featured_headline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featured_headlines/1
  # PATCH/PUT /featured_headlines/1.json
  def update
    respond_to do |format|
      if @featured_headline.update(featured_headline_params)
        format.html { redirect_to @featured_headline, notice: 'Featured headline was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured_headline }
      else
        format.html { render :edit }
        format.json { render json: @featured_headline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featured_headlines/1
  # DELETE /featured_headlines/1.json
  def destroy
    @featured_headline.destroy
    respond_to do |format|
      format.html { redirect_to featured_headlines_url, notice: 'Featured headline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured_headline
      @featured_headline = FeaturedHeadline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def featured_headline_params
      params.require(:featured_headline).permit(:tag_line, :headline_sort_order, :fk_headline_id)
    end
end
