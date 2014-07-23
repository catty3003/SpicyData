class AdminagentspecsController < ApplicationController
  before_action :set_adminagentspec, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /adminagentspecs
  # GET /adminagentspecs.json
  def index
    @adminagentspecs = Adminagentspec.all
  end

  # GET /adminagentspecs/1
  # GET /adminagentspecs/1.json
  def show
  end

  # GET /adminagentspecs/new
  def new
    @adminagentspec = Adminagentspec.new
  end

  # GET /adminagentspecs/1/edit
  def edit
  end

  # POST /adminagentspecs
  # POST /adminagentspecs.json
  def create
    @adminagentspec = Adminagentspec.new(adminagentspec_params)

    respond_to do |format|
      if @adminagentspec.save
        format.html { redirect_to @adminagentspec, notice: 'Adminagentspec was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminagentspec }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminagentspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminagentspecs/1
  # PATCH/PUT /adminagentspecs/1.json
  def update
    respond_to do |format|
      if @adminagentspec.update(adminagentspec_params)
        format.html { redirect_to @adminagentspec, notice: 'Adminagentspec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminagentspec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminagentspecs/1
  # DELETE /adminagentspecs/1.json
  def destroy
    @adminagentspec.destroy
    respond_to do |format|
      format.html { redirect_to adminagentspecs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminagentspec
      @adminagentspec = Adminagentspec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminagentspec_params
      params.require(:adminagentspec).permit(:a_species)
    end
end
