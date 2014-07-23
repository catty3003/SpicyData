class AdminmatrixgenusController < ApplicationController
  before_action :set_adminmatrixgenu, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /adminmatrixgenus
  # GET /adminmatrixgenus.json
  def index
    @adminmatrixgenus = Adminmatrixgenu.all
  end

  # GET /adminmatrixgenus/1
  # GET /adminmatrixgenus/1.json
  def show
  end

  # GET /adminmatrixgenus/new
  def new
    @adminmatrixgenu = Adminmatrixgenu.new
  end

  # GET /adminmatrixgenus/1/edit
  def edit
  end

  # POST /adminmatrixgenus
  # POST /adminmatrixgenus.json
  def create
    @adminmatrixgenu = Adminmatrixgenu.new(adminmatrixgenu_params)

    respond_to do |format|
      if @adminmatrixgenu.save
        format.html { redirect_to @adminmatrixgenu, notice: 'Adminmatrixgenu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminmatrixgenu }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminmatrixgenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminmatrixgenus/1
  # PATCH/PUT /adminmatrixgenus/1.json
  def update
    respond_to do |format|
      if @adminmatrixgenu.update(adminmatrixgenu_params)
        format.html { redirect_to @adminmatrixgenu, notice: 'Adminmatrixgenu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminmatrixgenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminmatrixgenus/1
  # DELETE /adminmatrixgenus/1.json
  def destroy
    @adminmatrixgenu.destroy
    respond_to do |format|
      format.html { redirect_to adminmatrixgenus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminmatrixgenu
      @adminmatrixgenu = Adminmatrixgenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminmatrixgenu_params
      params.require(:adminmatrixgenu).permit(:m_genus)
    end
end
