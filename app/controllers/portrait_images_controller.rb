class PortraitImagesController < ApplicationController
  before_action :set_portrait_image, only: [:show, :edit, :update, :destroy]

  # GET /portrait_images
  # GET /portrait_images.json
  def index
    @portrait_images = PortraitImage.all
  end

  # GET /portrait_images/1
  # GET /portrait_images/1.json
  def show
  end

  # GET /portrait_images/new
  def new
    @portrait_image = PortraitImage.new
  end

  # GET /portrait_images/1/edit
  def edit
  end

  # POST /portrait_images
  # POST /portrait_images.json
  def create
    @portrait_image = PortraitImage.new(portrait_image_params)

    respond_to do |format|
      if @portrait_image.save
        format.html { redirect_to @portrait_image, notice: 'Portrait image was successfully created.' }
        format.json { render :show, status: :created, location: @portrait_image }
      else
        format.html { render :new }
        format.json { render json: @portrait_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portrait_images/1
  # PATCH/PUT /portrait_images/1.json
  def update
    respond_to do |format|
      if @portrait_image.update(portrait_image_params)
        format.html { redirect_to @portrait_image, notice: 'Portrait image was successfully updated.' }
        format.json { render :show, status: :ok, location: @portrait_image }
      else
        format.html { render :edit }
        format.json { render json: @portrait_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portrait_images/1
  # DELETE /portrait_images/1.json
  def destroy
    @portrait_image.destroy
    respond_to do |format|
      format.html { redirect_to portrait_images_url, notice: 'Portrait image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portrait_image
      @portrait_image = PortraitImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portrait_image_params
      params.require(:portrait_image).permit(:date_uploaded, :file_size, :file_type, :filename, :fk_order_id, :fk_userinfo_id, :height, :orig_filename, :width, :isUserDefault)
    end
end
