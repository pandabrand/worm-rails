class Title2sController < ApplicationController
  before_action :set_title2, only: [:show, :edit, :update, :destroy]

  # GET /title2s
  # GET /title2s.json
  def index
    @title2s = Title2.all
  end

  # GET /title2s/1
  # GET /title2s/1.json
  def show
  end

  # GET /title2s/new
  def new
    @title2 = Title2.new
  end

  # GET /title2s/1/edit
  def edit
  end

  # POST /title2s
  # POST /title2s.json
  def create
    @title2 = Title2.new(title2_params)

    respond_to do |format|
      if @title2.save
        format.html { redirect_to @title2, notice: 'Title2 was successfully created.' }
        format.json { render :show, status: :created, location: @title2 }
      else
        format.html { render :new }
        format.json { render json: @title2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /title2s/1
  # PATCH/PUT /title2s/1.json
  def update
    respond_to do |format|
      if @title2.update(title2_params)
        format.html { redirect_to @title2, notice: 'Title2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @title2 }
      else
        format.html { render :edit }
        format.json { render json: @title2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /title2s/1
  # DELETE /title2s/1.json
  def destroy
    @title2.destroy
    respond_to do |format|
      format.html { redirect_to title2s_url, notice: 'Title2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title2
      @title2 = Title2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title2_params
      params.require(:title2).permit(:is_active, :name, :sort_order)
    end
end
