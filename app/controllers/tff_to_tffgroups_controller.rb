class TffToTffgroupsController < ApplicationController
  before_action :set_tff_to_tffgroup, only: [:show, :edit, :update, :destroy]

  # GET /tff_to_tffgroups
  # GET /tff_to_tffgroups.json
  def index
    @tff_to_tffgroups = TffToTffgroup.all
  end

  # GET /tff_to_tffgroups/1
  # GET /tff_to_tffgroups/1.json
  def show
  end

  # GET /tff_to_tffgroups/new
  def new
    @tff_to_tffgroup = TffToTffgroup.new
  end

  # GET /tff_to_tffgroups/1/edit
  def edit
  end

  # POST /tff_to_tffgroups
  # POST /tff_to_tffgroups.json
  def create
    @tff_to_tffgroup = TffToTffgroup.new(tff_to_tffgroup_params)

    respond_to do |format|
      if @tff_to_tffgroup.save
        format.html { redirect_to @tff_to_tffgroup, notice: 'Tff to tffgroup was successfully created.' }
        format.json { render :show, status: :created, location: @tff_to_tffgroup }
      else
        format.html { render :new }
        format.json { render json: @tff_to_tffgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tff_to_tffgroups/1
  # PATCH/PUT /tff_to_tffgroups/1.json
  def update
    respond_to do |format|
      if @tff_to_tffgroup.update(tff_to_tffgroup_params)
        format.html { redirect_to @tff_to_tffgroup, notice: 'Tff to tffgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @tff_to_tffgroup }
      else
        format.html { render :edit }
        format.json { render json: @tff_to_tffgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tff_to_tffgroups/1
  # DELETE /tff_to_tffgroups/1.json
  def destroy
    @tff_to_tffgroup.destroy
    respond_to do |format|
      format.html { redirect_to tff_to_tffgroups_url, notice: 'Tff to tffgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tff_to_tffgroup
      @tff_to_tffgroup = TffToTffgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tff_to_tffgroup_params
      params.require(:tff_to_tffgroup).permit(:pk_id, :pk_id1)
    end
end
