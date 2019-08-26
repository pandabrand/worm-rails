class JoinUserToAssistantsController < ApplicationController
  before_action :set_join_user_to_assistant, only: [:show, :edit, :update, :destroy]

  # GET /join_user_to_assistants
  # GET /join_user_to_assistants.json
  def index
    @join_user_to_assistants = JoinUserToAssistant.all
  end

  # GET /join_user_to_assistants/1
  # GET /join_user_to_assistants/1.json
  def show
  end

  # GET /join_user_to_assistants/new
  def new
    @join_user_to_assistant = JoinUserToAssistant.new
  end

  # GET /join_user_to_assistants/1/edit
  def edit
  end

  # POST /join_user_to_assistants
  # POST /join_user_to_assistants.json
  def create
    @join_user_to_assistant = JoinUserToAssistant.new(join_user_to_assistant_params)

    respond_to do |format|
      if @join_user_to_assistant.save
        format.html { redirect_to @join_user_to_assistant, notice: 'Join user to assistant was successfully created.' }
        format.json { render :show, status: :created, location: @join_user_to_assistant }
      else
        format.html { render :new }
        format.json { render json: @join_user_to_assistant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_user_to_assistants/1
  # PATCH/PUT /join_user_to_assistants/1.json
  def update
    respond_to do |format|
      if @join_user_to_assistant.update(join_user_to_assistant_params)
        format.html { redirect_to @join_user_to_assistant, notice: 'Join user to assistant was successfully updated.' }
        format.json { render :show, status: :ok, location: @join_user_to_assistant }
      else
        format.html { render :edit }
        format.json { render json: @join_user_to_assistant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_user_to_assistants/1
  # DELETE /join_user_to_assistants/1.json
  def destroy
    @join_user_to_assistant.destroy
    respond_to do |format|
      format.html { redirect_to join_user_to_assistants_url, notice: 'Join user to assistant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_user_to_assistant
      @join_user_to_assistant = JoinUserToAssistant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def join_user_to_assistant_params
      params.require(:join_user_to_assistant).permit(:cpfk_user_id, :cpfk_assistant_id)
    end
end
