class UserInfoToBranchesController < ApplicationController
  before_action :set_user_info_to_branch, only: [:show, :edit, :update, :destroy]

  # GET /user_info_to_branches
  # GET /user_info_to_branches.json
  def index
    @user_info_to_branches = UserInfoToBranch.all
  end

  # GET /user_info_to_branches/1
  # GET /user_info_to_branches/1.json
  def show
  end

  # GET /user_info_to_branches/new
  def new
    @user_info_to_branch = UserInfoToBranch.new
  end

  # GET /user_info_to_branches/1/edit
  def edit
  end

  # POST /user_info_to_branches
  # POST /user_info_to_branches.json
  def create
    @user_info_to_branch = UserInfoToBranch.new(user_info_to_branch_params)

    respond_to do |format|
      if @user_info_to_branch.save
        format.html { redirect_to @user_info_to_branch, notice: 'User info to branch was successfully created.' }
        format.json { render :show, status: :created, location: @user_info_to_branch }
      else
        format.html { render :new }
        format.json { render json: @user_info_to_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_info_to_branches/1
  # PATCH/PUT /user_info_to_branches/1.json
  def update
    respond_to do |format|
      if @user_info_to_branch.update(user_info_to_branch_params)
        format.html { redirect_to @user_info_to_branch, notice: 'User info to branch was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_info_to_branch }
      else
        format.html { render :edit }
        format.json { render json: @user_info_to_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_info_to_branches/1
  # DELETE /user_info_to_branches/1.json
  def destroy
    @user_info_to_branch.destroy
    respond_to do |format|
      format.html { redirect_to user_info_to_branches_url, notice: 'User info to branch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_info_to_branch
      @user_info_to_branch = UserInfoToBranch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_info_to_branch_params
      params.require(:user_info_to_branch).permit(:cpkfk_branch_id, :cpkfk_user_info_id)
    end
end
