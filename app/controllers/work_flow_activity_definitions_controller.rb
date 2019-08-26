class WorkFlowActivityDefinitionsController < ApplicationController
  before_action :set_work_flow_activity_definition, only: [:show, :edit, :update, :destroy]

  # GET /work_flow_activity_definitions
  # GET /work_flow_activity_definitions.json
  def index
    @work_flow_activity_definitions = WorkFlowActivityDefinition.all
  end

  # GET /work_flow_activity_definitions/1
  # GET /work_flow_activity_definitions/1.json
  def show
  end

  # GET /work_flow_activity_definitions/new
  def new
    @work_flow_activity_definition = WorkFlowActivityDefinition.new
  end

  # GET /work_flow_activity_definitions/1/edit
  def edit
  end

  # POST /work_flow_activity_definitions
  # POST /work_flow_activity_definitions.json
  def create
    @work_flow_activity_definition = WorkFlowActivityDefinition.new(work_flow_activity_definition_params)

    respond_to do |format|
      if @work_flow_activity_definition.save
        format.html { redirect_to @work_flow_activity_definition, notice: 'Work flow activity definition was successfully created.' }
        format.json { render :show, status: :created, location: @work_flow_activity_definition }
      else
        format.html { render :new }
        format.json { render json: @work_flow_activity_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_flow_activity_definitions/1
  # PATCH/PUT /work_flow_activity_definitions/1.json
  def update
    respond_to do |format|
      if @work_flow_activity_definition.update(work_flow_activity_definition_params)
        format.html { redirect_to @work_flow_activity_definition, notice: 'Work flow activity definition was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_flow_activity_definition }
      else
        format.html { render :edit }
        format.json { render json: @work_flow_activity_definition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_flow_activity_definitions/1
  # DELETE /work_flow_activity_definitions/1.json
  def destroy
    @work_flow_activity_definition.destroy
    respond_to do |format|
      format.html { redirect_to work_flow_activity_definitions_url, notice: 'Work flow activity definition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_flow_activity_definition
      @work_flow_activity_definition = WorkFlowActivityDefinition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_flow_activity_definition_params
      params.require(:work_flow_activity_definition).permit(:activity_code_temrails, :generate, :scaffold, :WorkFlowActivityDefinition, :activity_code_temrails, :generringrails, :generate, :scaffold, :WorkFlowActivityDefinition, :activity_code_temrails, :generate, :scaffold, :WorkFlowActivityDefinition, :activity_code_temrails, :genityrails, :generate, :scaffold, :WorkFlowActivityDefinition, :activity_code_temrail_initialization_code, :generate, :scaffold, :WorkFlowActivityDefinition, :activity_cod, :fk_next_activity_id, :actrails, :generate, :scaffold, :WorkFlowActivityDefinition, :activity_code_temraiyInstance, :fk_order, :generate, :scaffold, :WorkFlowActivityDefinition, :activity_code_temrails, :genere, :is_cancellerails, :generate, :scaffold, :WorkFlowActivityDefinition, :activity_code_temrails, :generate, :scaffold, :WorkFlowActivityDefinition, :activicafrails, :generate, :scaffold, :WorkFlowActivityDefinition, :activity_code_temrails, :generate, :scaffold, :WorkFlowActon_code, :fk_parent_process_id, :submit_code)
    end
end
