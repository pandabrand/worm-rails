class LabHeadlinesController < ApplicationController
  before_action :set_lab_headline, only: [:show, :edit, :update, :destroy]

  # GET /lab_headlines
  # GET /lab_headlines.json
  def index
    @lab_headlines = LabHeadline.all
  end

  # GET /lab_headlines/1
  # GET /lab_headlines/1.json
  def show
  end

  # GET /lab_headlines/new
  def new
    @lab_headline = LabHeadline.new
  end

  # GET /lab_headlines/1/edit
  def edit
  end

  # POST /lab_headlines
  # POST /lab_headlines.json
  def create
    @lab_headline = LabHeadline.new(lab_headline_params)

    respond_to do |format|
      if @lab_headline.save
        format.html { redirect_to @lab_headline, notice: 'Lab headline was successfully created.' }
        format.json { render :show, status: :created, location: @lab_headline }
      else
        format.html { render :new }
        format.json { render json: @lab_headline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_headlines/1
  # PATCH/PUT /lab_headlines/1.json
  def update
    respond_to do |format|
      if @lab_headline.update(lab_headline_params)
        format.html { redirect_to @lab_headline, notice: 'Lab headline was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab_headline }
      else
        format.html { render :edit }
        format.json { render json: @lab_headline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_headlines/1
  # DELETE /lab_headlines/1.json
  def destroy
    @lab_headline.destroy
    respond_to do |format|
      format.html { redirect_to lab_headlines_url, notice: 'Lab headline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_headline
      @lab_headline = LabHeadline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_headline_params
      params.require(:lab_headline).permit(:fk_template, :code, :fk_ad_matrix_category_id, :is_active, :title, :fk_matching_headline_category_id, :is_accessible, :is_accessible_text, :headlineColorTypeID)
    end
end
