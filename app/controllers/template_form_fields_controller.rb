class TemplateFormFieldsController < ApplicationController
  before_action :set_template_form_field, only: [:show, :edit, :update, :destroy]

  # GET /template_form_fields
  # GET /template_form_fields.json
  def index
    @template_form_fields = TemplateFormField.all
  end

  # GET /template_form_fields/1
  # GET /template_form_fields/1.json
  def show
  end

  # GET /template_form_fields/new
  def new
    @template_form_field = TemplateFormField.new
  end

  # GET /template_form_fields/1/edit
  def edit
  end

  # POST /template_form_fields
  # POST /template_form_fields.json
  def create
    @template_form_field = TemplateFormField.new(template_form_field_params)

    respond_to do |format|
      if @template_form_field.save
        format.html { redirect_to @template_form_field, notice: 'Template form field was successfully created.' }
        format.json { render :show, status: :created, location: @template_form_field }
      else
        format.html { render :new }
        format.json { render json: @template_form_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_form_fields/1
  # PATCH/PUT /template_form_fields/1.json
  def update
    respond_to do |format|
      if @template_form_field.update(template_form_field_params)
        format.html { redirect_to @template_form_field, notice: 'Template form field was successfully updated.' }
        format.json { render :show, status: :ok, location: @template_form_field }
      else
        format.html { render :edit }
        format.json { render json: @template_form_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_form_fields/1
  # DELETE /template_form_fields/1.json
  def destroy
    @template_form_field.destroy
    respond_to do |format|
      format.html { redirect_to template_form_fields_url, notice: 'Template form field was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_form_field
      @template_form_field = TemplateFormField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_form_field_params
      params.require(:template_form_field).permit(:sorails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :soraeger, :y_position, :default_text, :default_is_visible, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scafforinrails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :idatePattern, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :soreldGroup, :group_name, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :soraiatum, :sorails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffold, :TemplateFormField, :sorails, :generate, :scaffoleferences, :x_position, :y_position, :default_text, :default_is_visible, :instructions, :text_to_replace, :width, :height, :show_designations, :prepopulate_field, :is_all_caps)
    end
end
