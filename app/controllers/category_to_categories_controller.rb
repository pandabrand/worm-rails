class CategoryToCategoriesController < ApplicationController
  before_action :set_category_to_category, only: [:show, :edit, :update, :destroy]

  # GET /category_to_categories
  # GET /category_to_categories.json
  def index
    @category_to_categories = CategoryToCategory.all
  end

  # GET /category_to_categories/1
  # GET /category_to_categories/1.json
  def show
  end

  # GET /category_to_categories/new
  def new
    @category_to_category = CategoryToCategory.new
  end

  # GET /category_to_categories/1/edit
  def edit
  end

  # POST /category_to_categories
  # POST /category_to_categories.json
  def create
    @category_to_category = CategoryToCategory.new(category_to_category_params)

    respond_to do |format|
      if @category_to_category.save
        format.html { redirect_to @category_to_category, notice: 'Category to category was successfully created.' }
        format.json { render :show, status: :created, location: @category_to_category }
      else
        format.html { render :new }
        format.json { render json: @category_to_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_to_categories/1
  # PATCH/PUT /category_to_categories/1.json
  def update
    respond_to do |format|
      if @category_to_category.update(category_to_category_params)
        format.html { redirect_to @category_to_category, notice: 'Category to category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_to_category }
      else
        format.html { render :edit }
        format.json { render json: @category_to_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_to_categories/1
  # DELETE /category_to_categories/1.json
  def destroy
    @category_to_category.destroy
    respond_to do |format|
      format.html { redirect_to category_to_categories_url, notice: 'Category to category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_to_category
      @category_to_category = CategoryToCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_to_category_params
      params.require(:category_to_category).permit(:cp_fk_copy_category_id, :cp_fk_destination_category_id)
    end
end
