class CdgUserToRoleAssignmentsController < ApplicationController
  before_action :set_cdg_user_to_role_assignment, only: [:show, :edit, :update, :destroy]

  # GET /cdg_user_to_role_assignments
  # GET /cdg_user_to_role_assignments.json
  def index
    @cdg_user_to_role_assignments = CdgUserToRoleAssignment.all
  end

  # GET /cdg_user_to_role_assignments/1
  # GET /cdg_user_to_role_assignments/1.json
  def show
  end

  # GET /cdg_user_to_role_assignments/new
  def new
    @cdg_user_to_role_assignment = CdgUserToRoleAssignment.new
  end

  # GET /cdg_user_to_role_assignments/1/edit
  def edit
  end

  # POST /cdg_user_to_role_assignments
  # POST /cdg_user_to_role_assignments.json
  def create
    @cdg_user_to_role_assignment = CdgUserToRoleAssignment.new(cdg_user_to_role_assignment_params)

    respond_to do |format|
      if @cdg_user_to_role_assignment.save
        format.html { redirect_to @cdg_user_to_role_assignment, notice: 'Cdg user to role assignment was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_user_to_role_assignment }
      else
        format.html { render :new }
        format.json { render json: @cdg_user_to_role_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_user_to_role_assignments/1
  # PATCH/PUT /cdg_user_to_role_assignments/1.json
  def update
    respond_to do |format|
      if @cdg_user_to_role_assignment.update(cdg_user_to_role_assignment_params)
        format.html { redirect_to @cdg_user_to_role_assignment, notice: 'Cdg user to role assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_user_to_role_assignment }
      else
        format.html { render :edit }
        format.json { render json: @cdg_user_to_role_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_user_to_role_assignments/1
  # DELETE /cdg_user_to_role_assignments/1.json
  def destroy
    @cdg_user_to_role_assignment.destroy
    respond_to do |format|
      format.html { redirect_to cdg_user_to_role_assignments_url, notice: 'Cdg user to role assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_user_to_role_assignment
      @cdg_user_to_role_assignment = CdgUserToRoleAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_user_to_role_assignment_params
      params.require(:cdg_user_to_role_assignment).permit(:cpkfk_role_id, :cpkfk_user_id, :is_active, :role_sort_order, :user_sort_order)
    end
end
