class HeadlineToAdSizeAssignmentsController < ApplicationController
  before_action :set_headline_to_ad_size_assignment, only: [:show, :edit, :update, :destroy]

  # GET /headline_to_ad_size_assignments
  # GET /headline_to_ad_size_assignments.json
  def index
    @headline_to_ad_size_assignments = HeadlineToAdSizeAssignment.all
  end

  # GET /headline_to_ad_size_assignments/1
  # GET /headline_to_ad_size_assignments/1.json
  def show
  end

  # GET /headline_to_ad_size_assignments/new
  def new
    @headline_to_ad_size_assignment = HeadlineToAdSizeAssignment.new
  end

  # GET /headline_to_ad_size_assignments/1/edit
  def edit
  end

  # POST /headline_to_ad_size_assignments
  # POST /headline_to_ad_size_assignments.json
  def create
    @headline_to_ad_size_assignment = HeadlineToAdSizeAssignment.new(headline_to_ad_size_assignment_params)

    respond_to do |format|
      if @headline_to_ad_size_assignment.save
        format.html { redirect_to @headline_to_ad_size_assignment, notice: 'Headline to ad size assignment was successfully created.' }
        format.json { render :show, status: :created, location: @headline_to_ad_size_assignment }
      else
        format.html { render :new }
        format.json { render json: @headline_to_ad_size_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /headline_to_ad_size_assignments/1
  # PATCH/PUT /headline_to_ad_size_assignments/1.json
  def update
    respond_to do |format|
      if @headline_to_ad_size_assignment.update(headline_to_ad_size_assignment_params)
        format.html { redirect_to @headline_to_ad_size_assignment, notice: 'Headline to ad size assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @headline_to_ad_size_assignment }
      else
        format.html { render :edit }
        format.json { render json: @headline_to_ad_size_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headline_to_ad_size_assignments/1
  # DELETE /headline_to_ad_size_assignments/1.json
  def destroy
    @headline_to_ad_size_assignment.destroy
    respond_to do |format|
      format.html { redirect_to headline_to_ad_size_assignments_url, notice: 'Headline to ad size assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_headline_to_ad_size_assignment
      @headline_to_ad_size_assignment = HeadlineToAdSizeAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def headline_to_ad_size_assignment_params
      params.require(:headline_to_ad_size_assignment).permit(:cpkfk_ad_size_id, :cpkfk_headline_id, :is_active)
    end
end
