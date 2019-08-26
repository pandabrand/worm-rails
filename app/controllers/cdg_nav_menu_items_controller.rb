class CdgNavMenuItemsController < ApplicationController
  before_action :set_cdg_nav_menu_item, only: [:show, :edit, :update, :destroy]

  # GET /cdg_nav_menu_items
  # GET /cdg_nav_menu_items.json
  def index
    @cdg_nav_menu_items = CdgNavMenuItem.all
  end

  # GET /cdg_nav_menu_items/1
  # GET /cdg_nav_menu_items/1.json
  def show
  end

  # GET /cdg_nav_menu_items/new
  def new
    @cdg_nav_menu_item = CdgNavMenuItem.new
  end

  # GET /cdg_nav_menu_items/1/edit
  def edit
  end

  # POST /cdg_nav_menu_items
  # POST /cdg_nav_menu_items.json
  def create
    @cdg_nav_menu_item = CdgNavMenuItem.new(cdg_nav_menu_item_params)

    respond_to do |format|
      if @cdg_nav_menu_item.save
        format.html { redirect_to @cdg_nav_menu_item, notice: 'Cdg nav menu item was successfully created.' }
        format.json { render :show, status: :created, location: @cdg_nav_menu_item }
      else
        format.html { render :new }
        format.json { render json: @cdg_nav_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cdg_nav_menu_items/1
  # PATCH/PUT /cdg_nav_menu_items/1.json
  def update
    respond_to do |format|
      if @cdg_nav_menu_item.update(cdg_nav_menu_item_params)
        format.html { redirect_to @cdg_nav_menu_item, notice: 'Cdg nav menu item was successfully updated.' }
        format.json { render :show, status: :ok, location: @cdg_nav_menu_item }
      else
        format.html { render :edit }
        format.json { render json: @cdg_nav_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cdg_nav_menu_items/1
  # DELETE /cdg_nav_menu_items/1.json
  def destroy
    @cdg_nav_menu_item.destroy
    respond_to do |format|
      format.html { redirect_to cdg_nav_menu_items_url, notice: 'Cdg nav menu item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cdg_nav_menu_item
      @cdg_nav_menu_item = CdgNavMenuItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cdg_nav_menu_item_params
      params.require(:cdg_nav_menu_item).permit(:display_string, :fk_parent_nav_menu_item_id, :is_active, :page_name, :sort_order, :display_image_filename)
    end
end
