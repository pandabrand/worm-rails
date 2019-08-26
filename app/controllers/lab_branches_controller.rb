class LabBranchesController < ApplicationController
  before_action :set_lab_branch, only: [:show, :edit, :update, :destroy]

  # GET /lab_branches
  # GET /lab_branches.json
  def index
    @lab_branches = LabBranch.all
  end

  # GET /lab_branches/1
  # GET /lab_branches/1.json
  def show
  end

  # GET /lab_branches/new
  def new
    @lab_branch = LabBranch.new
  end

  # GET /lab_branches/1/edit
  def edit
  end

  # POST /lab_branches
  # POST /lab_branches.json
  def create
    @lab_branch = LabBranch.new(lab_branch_params)

    respond_to do |format|
      if @lab_branch.save
        format.html { redirect_to @lab_branch, notice: 'Lab branch was successfully created.' }
        format.json { render :show, status: :created, location: @lab_branch }
      else
        format.html { render :new }
        format.json { render json: @lab_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_branches/1
  # PATCH/PUT /lab_branches/1.json
  def update
    respond_to do |format|
      if @lab_branch.update(lab_branch_params)
        format.html { redirect_to @lab_branch, notice: 'Lab branch was successfully updated.' }
        format.json { render :show, status: :ok, location: @lab_branch }
      else
        format.html { render :edit }
        format.json { render json: @lab_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_branches/1
  # DELETE /lab_branches/1.json
  def destroy
    @lab_branch.destroy
    respond_to do |format|
      format.html { redirect_to lab_branches_url, notice: 'Lab branch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_branch
      @lab_branch = LabBranch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_branch_params
      params.require(:lab_branch).permit(:address1, :address2, :city, :fk_country_id, :fk_us_state_id, :name, :zip, :is_active, :branch_id, :state, :fk_area_id, :fk_complex_id)
    end
end
