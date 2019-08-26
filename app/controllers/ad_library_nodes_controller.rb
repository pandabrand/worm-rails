class AdLibraryNodesController < ApplicationController
  before_action :set_ad_library_node, only: [:show, :edit, :update, :destroy]

  # GET /ad_library_nodes
  # GET /ad_library_nodes.json
  def index
    @ad_library_nodes = AdLibraryNode.all
  end

  # GET /ad_library_nodes/1
  # GET /ad_library_nodes/1.json
  def show
  end

  # GET /ad_library_nodes/new
  def new
    @ad_library_node = AdLibraryNode.new
  end

  # GET /ad_library_nodes/1/edit
  def edit
  end

  # POST /ad_library_nodes
  # POST /ad_library_nodes.json
  def create
    @ad_library_node = AdLibraryNode.new(ad_library_node_params)

    respond_to do |format|
      if @ad_library_node.save
        format.html { redirect_to @ad_library_node, notice: 'Ad library node was successfully created.' }
        format.json { render :show, status: :created, location: @ad_library_node }
      else
        format.html { render :new }
        format.json { render json: @ad_library_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ad_library_nodes/1
  # PATCH/PUT /ad_library_nodes/1.json
  def update
    respond_to do |format|
      if @ad_library_node.update(ad_library_node_params)
        format.html { redirect_to @ad_library_node, notice: 'Ad library node was successfully updated.' }
        format.json { render :show, status: :ok, location: @ad_library_node }
      else
        format.html { render :edit }
        format.json { render json: @ad_library_node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ad_library_nodes/1
  # DELETE /ad_library_nodes/1.json
  def destroy
    @ad_library_node.destroy
    respond_to do |format|
      format.html { redirect_to ad_library_nodes_url, notice: 'Ad library node was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad_library_node
      @ad_library_node = AdLibraryNode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_library_node_params
      params.require(:ad_library_node).permit(:date_created, :date_modified, :fk_latest_template_id, :fk_parent_node_id, :fk_template_id, :is_active, :level, :name, :thumbnail_unique_name, :thumbnail_upload_name)
    end
end
