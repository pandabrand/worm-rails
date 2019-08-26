class CdgFunctionGroupsController < ApplicationController
  before_action :set_cdg_function_group, only: [:show, :edit, :update, :destroy]

  # GET /cdg_function_groups
  # GET /cdg_function_groups.json
  def index
    @cdg_function_groups = CdgFunctionGroup.all
  end

  # GET /cdg_function_groups/1
  # GET /cdg_function_groups/1.json
  def show
  end

  # GET /cdg_function_groups/new
  def new
    @cdg_function_group = CdgFunctionGroup.new
  end

  # GET /cdg_function_groups/1/edit
  def edit
  end

  # POST /cdg_function_groups
  # POST /cdg_function_groups.json
  def create
    @cdg_function_group = CdgFunctionGroup.new(cdg_function_group_params)

    respond_to do |format|
      if @cdg_function_group.save
        format.html { redirect_to @cdg_function_group, notice: 'Cdg function group was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_function_group }
      else
        format.html { render :new }
        format.json { render json: @cdg_function_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_function_groups/1
  # PATCH/PUT /cdg_function_groups/1.json
  def update
    respond_to do |format|
      if @cdg_function_group.update(cdg_function_group_params)
        format.html { redirect_to @cdg_function_group, notice: 'Cdg function group was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_function_group }
      else
        format.html { render :edit }
        format.json { render json: @cdg_function_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_function_groups/1
  # DELETE /cdg_function_groups/1.json
  def destroy
    @cdg_function_group.destroy
    respond_to do |format|
      format.html { redirect_to cdg_function_groups_url, notice: 'Cdg function group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_function_group
      @cdg_function_group = CdgFunctionGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_function_group_params
      params.require(:cdg_function_group).permit(:name, :sort_order)
    end
end
