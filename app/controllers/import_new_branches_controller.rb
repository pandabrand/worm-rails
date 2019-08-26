class ImportNewBranchesController < ApplicationController
  before_action :set_import_new_branch, only: [:show, :edit, :update, :destroy]

  # GET /import_new_branches
  # GET /import_new_branches.json
  def index
    @import_new_branches = ImportNewBranch.all
  end

  # GET /import_new_branches/1
  # GET /import_new_branches/1.json
  def show
  end

  # GET /import_new_branches/new
  def new
    @import_new_branch = ImportNewBranch.new
  end

  # GET /import_new_branches/1/edit
  def edit
  end

  # POST /import_new_branches
  # POST /import_new_branches.json
  def create
    @import_new_branch = ImportNewBranch.new(import_new_branch_params)

    respond_to do |format|
      if @import_new_branch.save
        format.html { redirect_to @import_new_branch, notice: 'Import new branch was successfully created.' }
        format.json { render :show, status: :created, location: @import_new_branch }
      else
        format.html { render :new }
        format.json { render json: @import_new_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /import_new_branches/1
  # PATCH/PUT /import_new_branches/1.json
  def update
    respond_to do |format|
      if @import_new_branch.update(import_new_branch_params)
        format.html { redirect_to @import_new_branch, notice: 'Import new branch was successfully updated.' }
        format.json { render :show, status: :ok, location: @import_new_branch }
      else
        format.html { render :edit }
        format.json { render json: @import_new_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /import_new_branches/1
  # DELETE /import_new_branches/1.json
  def destroy
    @import_new_branch.destroy
    respond_to do |format|
      format.html { redirect_to import_new_branches_url, notice: 'Import new branch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import_new_branch
      @import_new_branch = ImportNewBranch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_new_branch_params
      params.require(:import_new_branch).permit(:address1, :address2, :city, :district_area_id, :name, :state, :zip)
    end
end
