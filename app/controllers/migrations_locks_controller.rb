class MigrationsLocksController < ApplicationController
  before_action :set_migrations_lock, only: [:show, :edit, :update, :destroy]

  # GET /migrations_locks
  # GET /migrations_locks.json
  def index
    @migrations_locks = MigrationsLock.all
  end

  # GET /migrations_locks/1
  # GET /migrations_locks/1.json
  def show
  end

  # GET /migrations_locks/new
  def new
    @migrations_lock = MigrationsLock.new
  end

  # GET /migrations_locks/1/edit
  def edit
  end

  # POST /migrations_locks
  # POST /migrations_locks.json
  def create
    @migrations_lock = MigrationsLock.new(migrations_lock_params)

    respond_to do |format|
      if @migrations_lock.save
        format.html { redirect_to @migrations_lock, notice: 'Migrations lock was successfully created.' }
        format.json { render :show, status: :created, location: @migrations_lock }
      else
        format.html { render :new }
        format.json { render json: @migrations_lock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /migrations_locks/1
  # PATCH/PUT /migrations_locks/1.json
  def update
    respond_to do |format|
      if @migrations_lock.update(migrations_lock_params)
        format.html { redirect_to @migrations_lock, notice: 'Migrations lock was successfully updated.' }
        format.json { render :show, status: :ok, location: @migrations_lock }
      else
        format.html { render :edit }
        format.json { render json: @migrations_lock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /migrations_locks/1
  # DELETE /migrations_locks/1.json
  def destroy
    @migrations_lock.destroy
    respond_to do |format|
      format.html { redirect_to migrations_locks_url, notice: 'Migrations lock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_migrations_lock
      @migrations_lock = MigrationsLock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def migrations_lock_params
      params.require(:migrations_lock).permit(:is_locked)
    end
end
