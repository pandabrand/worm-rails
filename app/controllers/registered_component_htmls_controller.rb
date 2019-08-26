class RegisteredComponentHtmlsController < ApplicationController
  before_action :set_registered_component_html, only: [:show, :edit, :update, :destroy]

  # GET /registered_component_htmls
  # GET /registered_component_htmls.json
  def index
    @registered_component_htmls = RegisteredComponentHtml.all
  end

  # GET /registered_component_htmls/1
  # GET /registered_component_htmls/1.json
  def show
  end

  # GET /registered_component_htmls/new
  def new
    @registered_component_html = RegisteredComponentHtml.new
  end

  # GET /registered_component_htmls/1/edit
  def edit
  end

  # POST /registered_component_htmls
  # POST /registered_component_htmls.json
  def create
    @registered_component_html = RegisteredComponentHtml.new(registered_component_html_params)

    respond_to do |format|
      if @registered_component_html.save
        format.html { redirect_to @registered_component_html, notice: 'Registered component html was successfully created.' }
        format.json { render :show, status: :created, location: @registered_component_html }
      else
        format.html { render :new }
        format.json { render json: @registered_component_html.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registered_component_htmls/1
  # PATCH/PUT /registered_component_htmls/1.json
  def update
    respond_to do |format|
      if @registered_component_html.update(registered_component_html_params)
        format.html { redirect_to @registered_component_html, notice: 'Registered component html was successfully updated.' }
        format.json { render :show, status: :ok, location: @registered_component_html }
      else
        format.html { render :edit }
        format.json { render json: @registered_component_html.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registered_component_htmls/1
  # DELETE /registered_component_htmls/1.json
  def destroy
    @registered_component_html.destroy
    respond_to do |format|
      format.html { redirect_to registered_component_htmls_url, notice: 'Registered component html was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registered_component_html
      @registered_component_html = RegisteredComponentHtml.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registered_component_html_params
      params.require(:registered_component_html).permit(:text_data, :date_created, :date_modified, :display_name, :fk_component_id, :name, :sort_order)
    end
end
