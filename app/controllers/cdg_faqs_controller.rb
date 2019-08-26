class CdgFaqsController < ApplicationController
  before_action :set_cdg_faq, only: [:show, :edit, :update, :destroy]

  # GET /cdg_faqs
  # GET /cdg_faqs.json
  def index
    @cdg_faqs = CdgFaq.all
  end

  # GET /cdg_faqs/1
  # GET /cdg_faqs/1.json
  def show
  end

  # GET /cdg_faqs/new
  def new
    @cdg_faq = CdgFaq.new
  end

  # GET /cdg_faqs/1/edit
  def edit
  end

  # POST /cdg_faqs
  # POST /cdg_faqs.json
  def create
    @cdg_faq = CdgFaq.new(cdg_faq_params)

    respond_to do |format|
      if @cdg_faq.save
        format.html { redirect_to @cdg_faq, notice: 'Cdg faq was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_faq }
      else
        format.html { render :new }
        format.json { render json: @cdg_faq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_faqs/1
  # PATCH/PUT /cdg_faqs/1.json
  def update
    respond_to do |format|
      if @cdg_faq.update(cdg_faq_params)
        format.html { redirect_to @cdg_faq, notice: 'Cdg faq was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_faq }
      else
        format.html { render :edit }
        format.json { render json: @cdg_faq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_faqs/1
  # DELETE /cdg_faqs/1.json
  def destroy
    @cdg_faq.destroy
    respond_to do |format|
      format.html { redirect_to cdg_faqs_url, notice: 'Cdg faq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_faq
      @cdg_faq = CdgFaq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_faq_params
      params.require(:cdg_faq).permit(:is_active, :answer, :question, :sort_order)
    end
end
