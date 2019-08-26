class SavedPublicationsController < ApplicationController
  before_action :set_saved_publication, only: [:show, :edit, :update, :destroy]

  # GET /saved_publications
  # GET /saved_publications.json
  def index
    @saved_publications = SavedPublication.all
  end

  # GET /saved_publications/1
  # GET /saved_publications/1.json
  def show
  end

  # GET /saved_publications/new
  def new
    @saved_publication = SavedPublication.new
  end

  # GET /saved_publications/1/edit
  def edit
  end

  # POST /saved_publications
  # POST /saved_publications.json
  def create
    @saved_publication = SavedPublication.new(saved_publication_params)

    respond_to do |format|
      if @saved_publication.save
        format.html { redirect_to @saved_publication, notice: 'Saved publication was successfully created.' }
        format.json { render :show, status: :created, location: @saved_publication }
      else
        format.html { render :new }
        format.json { render json: @saved_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_publications/1
  # PATCH/PUT /saved_publications/1.json
  def update
    respond_to do |format|
      if @saved_publication.update(saved_publication_params)
        format.html { redirect_to @saved_publication, notice: 'Saved publication was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved_publication }
      else
        format.html { render :edit }
        format.json { render json: @saved_publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_publications/1
  # DELETE /saved_publications/1.json
  def destroy
    @saved_publication.destroy
    respond_to do |format|
      format.html { redirect_to saved_publications_url, notice: 'Saved publication was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_publication
      @saved_publication = SavedPublication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saved_publication_params
      params.require(:saved_publication).permit(:contact_name, :contact_phone, :contact_email_address, :date_created, :fk_creator_id, :fk_publication_type_id, :is_active, :publication_name)
    end
end
