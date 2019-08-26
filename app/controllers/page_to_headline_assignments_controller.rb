class PageToHeadlineAssignmentsController < ApplicationController
  before_action :set_page_to_headline_assignment, only: [:show, :edit, :update, :destroy]

  # GET /page_to_headline_assignments
  # GET /page_to_headline_assignments.json
  def index
    @page_to_headline_assignments = PageToHeadlineAssignment.all
  end

  # GET /page_to_headline_assignments/1
  # GET /page_to_headline_assignments/1.json
  def show
  end

  # GET /page_to_headline_assignments/new
  def new
    @page_to_headline_assignment = PageToHeadlineAssignment.new
  end

  # GET /page_to_headline_assignments/1/edit
  def edit
  end

  # POST /page_to_headline_assignments
  # POST /page_to_headline_assignments.json
  def create
    @page_to_headline_assignment = PageToHeadlineAssignment.new(page_to_headline_assignment_params)

    respond_to do |format|
      if @page_to_headline_assignment.save
        format.html { redirect_to @page_to_headline_assignment, notice: 'Page to headline assignment was successfully created.' }
        format.json { render :show, status: :created, location: @page_to_headline_assignment }
      else
        format.html { render :new }
        format.json { render json: @page_to_headline_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_to_headline_assignments/1
  # PATCH/PUT /page_to_headline_assignments/1.json
  def update
    respond_to do |format|
      if @page_to_headline_assignment.update(page_to_headline_assignment_params)
        format.html { redirect_to @page_to_headline_assignment, notice: 'Page to headline assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_to_headline_assignment }
      else
        format.html { render :edit }
        format.json { render json: @page_to_headline_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_to_headline_assignments/1
  # DELETE /page_to_headline_assignments/1.json
  def destroy
    @page_to_headline_assignment.destroy
    respond_to do |format|
      format.html { redirect_to page_to_headline_assignments_url, notice: 'Page to headline assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_to_headline_assignment
      @page_to_headline_assignment = PageToHeadlineAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_to_headline_assignment_params
      params.require(:page_to_headline_assignment).permit(:headline_sort_order, :cpkfk_headline_id, :cpkfk_page_content_id)
    end
end
