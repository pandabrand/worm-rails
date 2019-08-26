class RoletitlesController < ApplicationController
  before_action :set_roletitle, only: [:show, :edit, :update, :destroy]

  # GET /roletitles
  # GET /roletitles.json
  def index
    @roletitles = Roletitle.all
  end

  # GET /roletitles/1
  # GET /roletitles/1.json
  def show
  end

  # GET /roletitles/new
  def new
    @roletitle = Roletitle.new
  end

  # GET /roletitles/1/edit
  def edit
  end

  # POST /roletitles
  # POST /roletitles.json
  def create
    @roletitle = Roletitle.new(roletitle_params)

    respond_to do |format|
      if @roletitle.save
        format.html { redirect_to @roletitle, notice: 'Roletitle was successfully created.' }
        format.json { render :show, status: :created, location: @roletitle }
      else
        format.html { render :new }
        format.json { render json: @roletitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roletitles/1
  # PATCH/PUT /roletitles/1.json
  def update
    respond_to do |format|
      if @roletitle.update(roletitle_params)
        format.html { redirect_to @roletitle, notice: 'Roletitle was successfully updated.' }
        format.json { render :show, status: :ok, location: @roletitle }
      else
        format.html { render :edit }
        format.json { render json: @roletitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roletitles/1
  # DELETE /roletitles/1.json
  def destroy
    @roletitle.destroy
    respond_to do |format|
      format.html { redirect_to roletitles_url, notice: 'Roletitle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roletitle
      @roletitle = Roletitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roletitle_params
      params.require(:roletitle).permit(:is_active, :name, :fk_role_id)
    end
end
