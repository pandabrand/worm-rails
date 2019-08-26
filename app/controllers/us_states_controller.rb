class UsStatesController < ApplicationController
  before_action :set_us_state, only: [:show, :edit, :update, :destroy]

  # GET /us_states
  # GET /us_states.json
  def index
    @us_states = UsState.all
  end

  # GET /us_states/1
  # GET /us_states/1.json
  def show
  end

  # GET /us_states/new
  def new
    @us_state = UsState.new
  end

  # GET /us_states/1/edit
  def edit
  end

  # POST /us_states
  # POST /us_states.json
  def create
    @us_state = UsState.new(us_state_params)

    respond_to do |format|
      if @us_state.save
        format.html { redirect_to @us_state, notice: 'Us state was successfully created.' }
        format.json { render :show, status: :created, location: @us_state }
      else
        format.html { render :new }
        format.json { render json: @us_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /us_states/1
  # PATCH/PUT /us_states/1.json
  def update
    respond_to do |format|
      if @us_state.update(us_state_params)
        format.html { redirect_to @us_state, notice: 'Us state was successfully updated.' }
        format.json { render :show, status: :ok, location: @us_state }
      else
        format.html { render :edit }
        format.json { render json: @us_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /us_states/1
  # DELETE /us_states/1.json
  def destroy
    @us_state.destroy
    respond_to do |format|
      format.html { redirect_to us_states_url, notice: 'Us state was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_us_state
      @us_state = UsState.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def us_state_params
      params.require(:us_state).permit(:sort_order, :abbreviation, :name)
    end
end
