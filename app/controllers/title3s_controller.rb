class Title3sController < ApplicationController
  before_action :set_title3, only: [:show, :edit, :update, :destroy]

  # GET /title3s
  # GET /title3s.json
  def index
    @title3s = Title3.all
  end

  # GET /title3s/1
  # GET /title3s/1.json
  def show
  end

  # GET /title3s/new
  def new
    @title3 = Title3.new
  end

  # GET /title3s/1/edit
  def edit
  end

  # POST /title3s
  # POST /title3s.json
  def create
    @title3 = Title3.new(title3_params)

    respond_to do |format|
      if @title3.save
        format.html { redirect_to @title3, notice: 'Title3 was successfully created.' }
        format.json { render :show, status: :created, location: @title3 }
      else
        format.html { render :new }
        format.json { render json: @title3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /title3s/1
  # PATCH/PUT /title3s/1.json
  def update
    respond_to do |format|
      if @title3.update(title3_params)
        format.html { redirect_to @title3, notice: 'Title3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @title3 }
      else
        format.html { render :edit }
        format.json { render json: @title3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /title3s/1
  # DELETE /title3s/1.json
  def destroy
    @title3.destroy
    respond_to do |format|
      format.html { redirect_to title3s_url, notice: 'Title3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title3
      @title3 = Title3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def title3_params
      params.require(:title3).permit(:isActive, :name, :sort_order)
    end
end
