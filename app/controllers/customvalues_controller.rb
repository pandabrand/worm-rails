class CustomvaluesController < ApplicationController
  before_action :set_customvalue, only: [:show, :edit, :update, :destroy]

  # GET /customvalues
  # GET /customvalues.json
  def index
    @customvalues = Customvalue.all
  end

  # GET /customvalues/1
  # GET /customvalues/1.json
  def show
  end

  # GET /customvalues/new
  def new
    @customvalue = Customvalue.new
  end

  # GET /customvalues/1/edit
  def edit
  end

  # POST /customvalues
  # POST /customvalues.json
  def create
    @customvalue = Customvalue.new(customvalue_params)

    respond_to do |format|
      if @customvalue.save
        format.html { redirect_to @customvalue, notice: 'Customvalue was successfully created.' }
        format.json { render :show, status: :created, location: @customvalue }
      else
        format.html { render :new }
        format.json { render json: @customvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customvalues/1
  # PATCH/PUT /customvalues/1.json
  def update
    respond_to do |format|
      if @customvalue.update(customvalue_params)
        format.html { redirect_to @customvalue, notice: 'Customvalue was successfully updated.' }
        format.json { render :show, status: :ok, location: @customvalue }
      else
        format.html { render :edit }
        format.json { render json: @customvalue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customvalues/1
  # DELETE /customvalues/1.json
  def destroy
    @customvalue.destroy
    respond_to do |format|
      format.html { redirect_to customvalues_url, notice: 'Customvalue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customvalue
      @customvalue = Customvalue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customvalue_params
      params.require(:customvalue).permit(:name, :templateFormFieldID, :value)
    end
end
