class FormFieldTypesController < ApplicationController
  before_action :set_form_field_type, only: [:show, :edit, :update, :destroy]

  # GET /form_field_types
  # GET /form_field_types.json
  def index
    @form_field_types = FormFieldType.all
  end

  # GET /form_field_types/1
  # GET /form_field_types/1.json
  def show
  end

  # GET /form_field_types/new
  def new
    @form_field_type = FormFieldType.new
  end

  # GET /form_field_types/1/edit
  def edit
  end

  # POST /form_field_types
  # POST /form_field_types.json
  def create
    @form_field_type = FormFieldType.new(form_field_type_params)

    respond_to do |format|
      if @form_field_type.save
        format.html { redirect_to @form_field_type, notice: 'Form field type was successfully created.' }
        format.json { render :show, status: :created, location: @form_field_type }
      else
        format.html { render :new }
        format.json { render json: @form_field_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_field_types/1
  # PATCH/PUT /form_field_types/1.json
  def update
    respond_to do |format|
      if @form_field_type.update(form_field_type_params)
        format.html { redirect_to @form_field_type, notice: 'Form field type was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_field_type }
      else
        format.html { render :edit }
        format.json { render json: @form_field_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_field_types/1
  # DELETE /form_field_types/1.json
  def destroy
    @form_field_type.destroy
    respond_to do |format|
      format.html { redirect_to form_field_types_url, notice: 'Form field type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_field_type
      @form_field_type = FormFieldType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def form_field_type_params
      params.require(:form_field_type).permit(:type, :fk_data_ref_id)
    end
end
