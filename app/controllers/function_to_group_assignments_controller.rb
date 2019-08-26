class FunctionToGroupAssignmentsController < ApplicationController
  before_action :set_function_to_group_assignment, only: [:show, :edit, :update, :destroy]

  # GET /function_to_group_assignments
  # GET /function_to_group_assignments.json
  def index
    @function_to_group_assignments = FunctionToGroupAssignment.all
  end

  # GET /function_to_group_assignments/1
  # GET /function_to_group_assignments/1.json
  def show
  end

  # GET /function_to_group_assignments/new
  def new
    @function_to_group_assignment = FunctionToGroupAssignment.new
  end

  # GET /function_to_group_assignments/1/edit
  def edit
  end

  # POST /function_to_group_assignments
  # POST /function_to_group_assignments.json
  def create
    @function_to_group_assignment = FunctionToGroupAssignment.new(function_to_group_assignment_params)

    respond_to do |format|
      if @function_to_group_assignment.save
        format.html { redirect_to @function_to_group_assignment, notice: 'Function to group assignment was successfully created.' }
        format.json { render :show, status: :created, location: @function_to_group_assignment }
      else
        format.html { render :new }
        format.json { render json: @function_to_group_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /function_to_group_assignments/1
  # PATCH/PUT /function_to_group_assignments/1.json
  def update
    respond_to do |format|
      if @function_to_group_assignment.update(function_to_group_assignment_params)
        format.html { redirect_to @function_to_group_assignment, notice: 'Function to group assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @function_to_group_assignment }
      else
        format.html { render :edit }
        format.json { render json: @function_to_group_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /function_to_group_assignments/1
  # DELETE /function_to_group_assignments/1.json
  def destroy
    @function_to_group_assignment.destroy
    respond_to do |format|
      format.html { redirect_to function_to_group_assignments_url, notice: 'Function to group assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_function_to_group_assignment
      @function_to_group_assignment = FunctionToGroupAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def function_to_group_assignment_params
      params.require(:function_to_group_assignment).permit(:group_sort_order, :cpkfk_function_group_id, :cpkfk_function_id, :function_sort_order)
    end
end
