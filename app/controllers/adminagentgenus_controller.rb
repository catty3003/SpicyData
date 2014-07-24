class AdminagentgenusController < ApplicationController
  before_action :set_adminagentgenu, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /adminagentgenus
  # GET /adminagentgenus.json
  def index
    @adminagentgenus = Adminagentgenu.all
  end

  # GET /adminagentgenus/1
  # GET /adminagentgenus/1.json
  def show
  end

  # GET /adminagentgenus/new
  def new
    @adminagentgenu = Adminagentgenu.new
  end

  # GET /adminagentgenus/1/edit
  def edit
  end

  # POST /adminagentgenus
  # POST /adminagentgenus.json
  def create
    @adminagentgenu = Adminagentgenu.new(adminagentgenu_params)

    respond_to do |format|
      if @adminagentgenu.save
        format.html { redirect_to @adminagentgenu, notice: 'Adminagentgenu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminagentgenu }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminagentgenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminagentgenus/1
  # PATCH/PUT /adminagentgenus/1.json
  def update
    respond_to do |format|
      if @adminagentgenu.update(adminagentgenu_params)
        format.html { redirect_to @adminagentgenu, notice: 'Adminagentgenu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminagentgenu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminagentgenus/1
  # DELETE /adminagentgenus/1.json
  def destroy
    @adminagentgenu.destroy
    respond_to do |format|
      format.html { redirect_to adminagentgenus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminagentgenu
      @adminagentgenu = Adminagentgenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminagentgenu_params
      params.require(:adminagentgenu).permit(:a_genus)
    end
end
