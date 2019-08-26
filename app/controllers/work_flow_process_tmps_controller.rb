class WorkFlowProcessTmpsController < ApplicationController
  before_action :set_work_flow_process_tmp, only: [:show, :edit, :update, :destroy]

  # GET /work_flow_process_tmps
  # GET /work_flow_process_tmps.json
  def index
    @work_flow_process_tmps = WorkFlowProcessTmp.all
  end

  # GET /work_flow_process_tmps/1
  # GET /work_flow_process_tmps/1.json
  def show
  end

  # GET /work_flow_process_tmps/new
  def new
    @work_flow_process_tmp = WorkFlowProcessTmp.new
  end

  # GET /work_flow_process_tmps/1/edit
  def edit
  end

  # POST /work_flow_process_tmps
  # POST /work_flow_process_tmps.json
  def create
    @work_flow_process_tmp = WorkFlowProcessTmp.new(work_flow_process_tmp_params)

    respond_to do |format|
      if @work_flow_process_tmp.save
        format.html { redirect_to @work_flow_process_tmp, notice: 'Work flow process tmp was successfully created.' }
        format.json { render :show, status: :created, location: @work_flow_process_tmp }
      else
        format.html { render :new }
        format.json { render json: @work_flow_process_tmp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_flow_process_tmps/1
  # PATCH/PUT /work_flow_process_tmps/1.json
  def update
    respond_to do |format|
      if @work_flow_process_tmp.update(work_flow_process_tmp_params)
        format.html { redirect_to @work_flow_process_tmp, notice: 'Work flow process tmp was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_flow_process_tmp }
      else
        format.html { render :edit }
        format.json { render json: @work_flow_process_tmp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_flow_process_tmps/1
  # DELETE /work_flow_process_tmps/1.json
  def destroy
    @work_flow_process_tmp.destroy
    respond_to do |format|
      format.html { redirect_to work_flow_process_tmps_url, notice: 'Work flow process tmp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_flow_process_tmp
      @work_flow_process_tmp = WorkFlowProcessTmp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_flow_process_tmp_params
      params.require(:work_flow_process_tmp).permit(:end_condition_code, :is_active, :name, :start_code, :start_condition_code, :fk_parent_process_id, :submit_code)
    end
end
