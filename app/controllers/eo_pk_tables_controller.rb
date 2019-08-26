class EoPkTablesController < ApplicationController
  before_action :set_eo_pk_table, only: [:show, :edit, :update, :destroy]

  # GET /eo_pk_tables
  # GET /eo_pk_tables.json
  def index
    @eo_pk_tables = EoPkTable.all
  end

  # GET /eo_pk_tables/1
  # GET /eo_pk_tables/1.json
  def show
  end

  # GET /eo_pk_tables/new
  def new
    @eo_pk_table = EoPkTable.new
  end

  # GET /eo_pk_tables/1/edit
  def edit
  end

  # POST /eo_pk_tables
  # POST /eo_pk_tables.json
  def create
    @eo_pk_table = EoPkTable.new(eo_pk_table_params)

    respond_to do |format|
      if @eo_pk_table.save
        format.html { redirect_to @eo_pk_table, notice: 'Eo pk table was successfully created.' }
        format.json { render :show, status: :created, location: @eo_pk_table }
      else
        format.html { render :new }
        format.json { render json: @eo_pk_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eo_pk_tables/1
  # PATCH/PUT /eo_pk_tables/1.json
  def update
    respond_to do |format|
      if @eo_pk_table.update(eo_pk_table_params)
        format.html { redirect_to @eo_pk_table, notice: 'Eo pk table was successfully updated.' }
        format.json { render :show, status: :ok, location: @eo_pk_table }
      else
        format.html { render :edit }
        format.json { render json: @eo_pk_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eo_pk_tables/1
  # DELETE /eo_pk_tables/1.json
  def destroy
    @eo_pk_table.destroy
    respond_to do |format|
      format.html { redirect_to eo_pk_tables_url, notice: 'Eo pk table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eo_pk_table
      @eo_pk_table = EoPkTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eo_pk_table_params
      params.require(:eo_pk_table).permit(:PK)
    end
end
