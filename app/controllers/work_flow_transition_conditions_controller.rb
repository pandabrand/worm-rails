class WorkFlowTransitionConditionsController < ApplicationController
  before_action :set_work_flow_transition_condition, only: [:show, :edit, :update, :destroy]

  # GET /work_flow_transition_conditions
  # GET /work_flow_transition_conditions.json
  def index
    @work_flow_transition_conditions = WorkFlowTransitionCondition.all
  end

  # GET /work_flow_transition_conditions/1
  # GET /work_flow_transition_conditions/1.json
  def show
  end

  # GET /work_flow_transition_conditions/new
  def new
    @work_flow_transition_condition = WorkFlowTransitionCondition.new
  end

  # GET /work_flow_transition_conditions/1/edit
  def edit
  end

  # POST /work_flow_transition_conditions
  # POST /work_flow_transition_conditions.json
  def create
    @work_flow_transition_condition = WorkFlowTransitionCondition.new(work_flow_transition_condition_params)

    respond_to do |format|
      if @work_flow_transition_condition.save
        format.html { redirect_to @work_flow_transition_condition, notice: 'Work flow transition condition was successfully created.' }
        format.json { render :show, status: :created, location: @work_flow_transition_condition }
      else
        format.html { render :new }
        format.json { render json: @work_flow_transition_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_flow_transition_conditions/1
  # PATCH/PUT /work_flow_transition_conditions/1.json
  def update
    respond_to do |format|
      if @work_flow_transition_condition.update(work_flow_transition_condition_params)
        format.html { redirect_to @work_flow_transition_condition, notice: 'Work flow transition condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_flow_transition_condition }
      else
        format.html { render :edit }
        format.json { render json: @work_flow_transition_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_flow_transition_conditions/1
  # DELETE /work_flow_transition_conditions/1.json
  def destroy
    @work_flow_transition_condition.destroy
    respond_to do |format|
      format.html { redirect_to work_flow_transition_conditions_url, notice: 'Work flow transition condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_flow_transition_condition
      @work_flow_transition_condition = WorkFlowTransitionCondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_flow_transition_condition_params
      params.require(:work_flow_transition_condition).permit(:transitionCode, :cpkfk_predecessor_id, :cpkfk_successor_id, :is_active, :name)
    end
end
