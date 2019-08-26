class AdMatrixCategoriesController < ApplicationController
  before_action :set_ad_matrix_category, only: [:show, :edit, :update, :destroy]

  # GET /ad_matrix_categories
  # GET /ad_matrix_categories.json
  def index
    @ad_matrix_categories = AdMatrixCategory.all
  end

  # GET /ad_matrix_categories/1
  # GET /ad_matrix_categories/1.json
  def show
  end

  # GET /ad_matrix_categories/new
  def new
    @ad_matrix_category = AdMatrixCategory.new
  end

  # GET /ad_matrix_categories/1/edit
  def edit
  end

  # POST /ad_matrix_categories
  # POST /ad_matrix_categories.json
  def create
    @ad_matrix_category = AdMatrixCategory.new(ad_matrix_category_params)

    respond_to do |format|
      if @ad_matrix_category.save
        format.html { redirect_to @ad_matrix_category, notice: 'Ad matrix category was successfully created.' }
        format.json { render :show, status: :created, location: @ad_matrix_category }
      else
        format.html { render :new }
        format.json { render json: @ad_matrix_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_matrix_categories/1
  # PATCH/PUT /ad_matrix_categories/1.json
  def update
    respond_to do |format|
      if @ad_matrix_category.update(ad_matrix_category_params)
        format.html { redirect_to @ad_matrix_category, notice: 'Ad matrix category was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad_matrix_category }
      else
        format.html { render :edit }
        format.json { render json: @ad_matrix_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_matrix_categories/1
  # DELETE /ad_matrix_categories/1.json
  def destroy
    @ad_matrix_category.destroy
    respond_to do |format|
      format.html { redirect_to ad_matrix_categories_url, notice: 'Ad matrix category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_matrix_category
      @ad_matrix_category = AdMatrixCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_matrix_category_params
      params.require(:ad_matrix_category).permit(:category_name, :fk_parent_category_id, :is_active, :sort_order, :fk_featured_headline_id, :date_embargo, :date_expiration, :level, :thumbnail_unique_name, :thumbnail_upload_name, :date_created, :date_modified, :fk_latest_template_id, :copied_headline_id)
    end
end
