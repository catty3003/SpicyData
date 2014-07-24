class AdminmatrixspecsController < ApplicationController
  before_action :set_adminmatrixspec, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /adminmatrixspecs
  # GET /adminmatrixspecs.json
  def index
    @adminmatrixspecs = Adminmatrixspec.all
  end

  # GET /adminmatrixspecs/1
  # GET /adminmatrixspecs/1.json
  def show
  end

  # GET /adminmatrixspecs/new
  def new
    @adminmatrixspec = Adminmatrixspec.new
  end

  # GET /adminmatrixspecs/1/edit
  def edit
  end

  # POST /adminmatrixspecs
  # POST /adminmatrixspecs.json
  def create
    @adminmatrixspec = Adminmatrixspec.new(adminmatrixspec_params)

    respond_to do |format|
      if @adminmatrixspec.save
        format.html { redirect_to @adminmatrixspec, notice: 'Adminmatrixspec was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminmatrixspec }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminmatrixspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminmatrixspecs/1
  # PATCH/PUT /adminmatrixspecs/1.json
  def update
    respond_to do |format|
      if @adminmatrixspec.update(adminmatrixspec_params)
        format.html { redirect_to @adminmatrixspec, notice: 'Adminmatrixspec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminmatrixspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminmatrixspecs/1
  # DELETE /adminmatrixspecs/1.json
  def destroy
    @adminmatrixspec.destroy
    respond_to do |format|
      format.html { redirect_to adminmatrixspecs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminmatrixspec
      @adminmatrixspec = Adminmatrixspec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminmatrixspec_params
      params.require(:adminmatrixspec).permit(:m_species)
    end
end
