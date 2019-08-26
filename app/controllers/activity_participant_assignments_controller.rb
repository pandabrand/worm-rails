class ActivityParticipantAssignmentsController < ApplicationController
  before_action :set_activity_participant_assignment, only: [:show, :edit, :update, :destroy]

  # GET /activity_participant_assignments
  # GET /activity_participant_assignments.json
  def index
    @activity_participant_assignments = ActivityParticipantAssignment.all
  end

  # GET /activity_participant_assignments/1
  # GET /activity_participant_assignments/1.json
  def show
  end

  # GET /activity_participant_assignments/new
  def new
    @activity_participant_assignment = ActivityParticipantAssignment.new
  end

  # GET /activity_participant_assignments/1/edit
  def edit
  end

  # POST /activity_participant_assignments
  # POST /activity_participant_assignments.json
  def create
    @activity_participant_assignment = ActivityParticipantAssignment.new(activity_participant_assignment_params)

    respond_to do |format|
      if @activity_participant_assignment.save
        format.html { redirect_to @activity_participant_assignment, notice: 'Activity participant assignment was successfully created.' }
        format.json { render :show, status: :created, location: @activity_participant_assignment }
      else
        format.html { render :new }
        format.json { render json: @activity_participant_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activity_participant_assignments/1
  # PATCH/PUT /activity_participant_assignments/1.json
  def update
    respond_to do |format|
      if @activity_participant_assignment.update(activity_participant_assignment_params)
        format.html { redirect_to @activity_participant_assignment, notice: 'Activity participant assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @activity_participant_assignment }
      else
        format.html { render :edit }
        format.json { render json: @activity_participant_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activity_participant_assignments/1
  # DELETE /activity_participant_assignments/1.json
  def destroy
    @activity_participant_assignment.destroy
    respond_to do |format|
      format.html { redirect_to activity_participant_assignments_url, notice: 'Activity participant assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity_participant_assignment
      @activity_participant_assignment = ActivityParticipantAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_participant_assignment_params
      params.require(:activity_participant_assignment).permit(:cpkfk_user_id, :cpkfk_activity_instance_id, :date_created, :fk_assistant_id)
    end
end
