class CdgConfigurationsController < ApplicationController
  before_action :set_cdg_configuration, only: [:show, :edit, :update, :destroy]

  # GET /cdg_configurations
  # GET /cdg_configurations.json
  def index
    @cdg_configurations = CdgConfiguration.all
  end

  # GET /cdg_configurations/1
  # GET /cdg_configurations/1.json
  def show
  end

  # GET /cdg_configurations/new
  def new
    @cdg_configuration = CdgConfiguration.new
  end

  # GET /cdg_configurations/1/edit
  def edit
  end

  # POST /cdg_configurations
  # POST /cdg_configurations.json
  def create
    @cdg_configuration = CdgConfiguration.new(cdg_configuration_params)

    respond_to do |format|
      if @cdg_configuration.save
        format.html { redirect_to @cdg_configuration, notice: 'Cdg configuration was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_configuration }
      else
        format.html { render :new }
        format.json { render json: @cdg_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_configurations/1
  # PATCH/PUT /cdg_configurations/1.json
  def update
    respond_to do |format|
      if @cdg_configuration.update(cdg_configuration_params)
        format.html { redirect_to @cdg_configuration, notice: 'Cdg configuration was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_configuration }
      else
        format.html { render :edit }
        format.json { render json: @cdg_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_configurations/1
  # DELETE /cdg_configurations/1.json
  def destroy
    @cdg_configuration.destroy
    respond_to do |format|
      format.html { redirect_to cdg_configurations_url, notice: 'Cdg configuration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_configuration
      @cdg_configuration = CdgConfiguration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_configuration_params
      params.require(:cdg_configuration).permit(:name, :value, :is_default)
    end
end
