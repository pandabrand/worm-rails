class RegisteredComponentsController < ApplicationController
  before_action :set_registered_component, only: [:show, :edit, :update, :destroy]

  # GET /registered_components
  # GET /registered_components.json
  def index
    @registered_components = RegisteredComponent.all
  end

  # GET /registered_components/1
  # GET /registered_components/1.json
  def show
  end

  # GET /registered_components/new
  def new
    @registered_component = RegisteredComponent.new
  end

  # GET /registered_components/1/edit
  def edit
  end

  # POST /registered_components
  # POST /registered_components.json
  def create
    @registered_component = RegisteredComponent.new(registered_component_params)

    respond_to do |format|
      if @registered_component.save
        format.html { redirect_to @registered_component, notice: 'Registered component was successfully created.' }
        format.json { render :show, status: :created, location: @registered_component }
      else
        format.html { render :new }
        format.json { render json: @registered_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registered_components/1
  # PATCH/PUT /registered_components/1.json
  def update
    respond_to do |format|
      if @registered_component.update(registered_component_params)
        format.html { redirect_to @registered_component, notice: 'Registered component was successfully updated.' }
        format.json { render :show, status: :ok, location: @registered_component }
      else
        format.html { render :edit }
        format.json { render json: @registered_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registered_components/1
  # DELETE /registered_components/1.json
  def destroy
    @registered_component.destroy
    respond_to do |format|
      format.html { redirect_to registered_components_url, notice: 'Registered component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registered_component
      @registered_component = RegisteredComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registered_component_params
      params.require(:registered_component).permit(:admin_display_name, :component_name, :page_description)
    end
end
