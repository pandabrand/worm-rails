class Title1sController < ApplicationController
  before_action :set_title1, only: [:show, :edit, :update, :destroy]

  # GET /title1s
  # GET /title1s.json
  def index
    @title1s = Title1.all
  end

  # GET /title1s/1
  # GET /title1s/1.json
  def show
  end

  # GET /title1s/new
  def new
    @title1 = Title1.new
  end

  # GET /title1s/1/edit
  def edit
  end

  # POST /title1s
  # POST /title1s.json
  def create
    @title1 = Title1.new(title1_params)

    respond_to do |format|
      if @title1.save
        format.html { redirect_to @title1, notice: 'Title1 was successfully created.' }
        format.json { render :show, status: :created, location: @title1 }
      else
        format.html { render :new }
        format.json { render json: @title1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /title1s/1
  # PATCH/PUT /title1s/1.json
  def update
    respond_to do |format|
      if @title1.update(title1_params)
        format.html { redirect_to @title1, notice: 'Title1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @title1 }
      else
        format.html { render :edit }
        format.json { render json: @title1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /title1s/1
  # DELETE /title1s/1.json
  def destroy
    @title1.destroy
    respond_to do |format|
      format.html { redirect_to title1s_url, notice: 'Title1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title1
      @title1 = Title1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title1_params
      params.require(:title1).permit(:is_active, :name, :sort_order)
    end
end
