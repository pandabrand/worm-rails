class CopiedCategoriesController < ApplicationController
  before_action :set_copied_category, only: [:show, :edit, :update, :destroy]

  # GET /copied_categories
  # GET /copied_categories.json
  def index
    @copied_categories = CopiedCategory.all
  end

  # GET /copied_categories/1
  # GET /copied_categories/1.json
  def show
  end

  # GET /copied_categories/new
  def new
    @copied_category = CopiedCategory.new
  end

  # GET /copied_categories/1/edit
  def edit
  end

  # POST /copied_categories
  # POST /copied_categories.json
  def create
    @copied_category = CopiedCategory.new(copied_category_params)

    respond_to do |format|
      if @copied_category.save
        format.html { redirect_to @copied_category, notice: 'Copied category was successfully created.' }
        format.json { render :show, status: :created, location: @copied_category }
      else
        format.html { render :new }
        format.json { render json: @copied_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copied_categories/1
  # PATCH/PUT /copied_categories/1.json
  def update
    respond_to do |format|
      if @copied_category.update(copied_category_params)
        format.html { redirect_to @copied_category, notice: 'Copied category was successfully updated.' }
        format.json { render :show, status: :ok, location: @copied_category }
      else
        format.html { render :edit }
        format.json { render json: @copied_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copied_categories/1
  # DELETE /copied_categories/1.json
  def destroy
    @copied_category.destroy
    respond_to do |format|
      format.html { redirect_to copied_categories_url, notice: 'Copied category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copied_category
      @copied_category = CopiedCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copied_category_params
      params.require(:copied_category).permit(:destination_pk_id, :copied_pk_id)
    end
end
