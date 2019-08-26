class FeaturedLinksController < ApplicationController
  before_action :set_featured_link, only: [:show, :edit, :update, :destroy]

  # GET /featured_links
  # GET /featured_links.json
  def index
    @featured_links = FeaturedLink.all
  end

  # GET /featured_links/1
  # GET /featured_links/1.json
  def show
  end

  # GET /featured_links/new
  def new
    @featured_link = FeaturedLink.new
  end

  # GET /featured_links/1/edit
  def edit
  end

  # POST /featured_links
  # POST /featured_links.json
  def create
    @featured_link = FeaturedLink.new(featured_link_params)

    respond_to do |format|
      if @featured_link.save
        format.html { redirect_to @featured_link, notice: 'Featured link was successfully created.' }
        format.json { render :show, status: :created, location: @featured_link }
      else
        format.html { render :new }
        format.json { render json: @featured_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featured_links/1
  # PATCH/PUT /featured_links/1.json
  def update
    respond_to do |format|
      if @featured_link.update(featured_link_params)
        format.html { redirect_to @featured_link, notice: 'Featured link was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured_link }
      else
        format.html { render :edit }
        format.json { render json: @featured_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featured_links/1
  # DELETE /featured_links/1.json
  def destroy
    @featured_link.destroy
    respond_to do |format|
      format.html { redirect_to featured_links_url, notice: 'Featured link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured_link
      @featured_link = FeaturedLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def featured_link_params
      params.require(:featured_link).permit(:sort_order, :address, :link_name)
    end
end
