class AdmintreatmentmechanicalsController < ApplicationController
  before_action :set_admintreatmentmechanical, only: [:show, :edit, :update, :destroy]

  # GET /admintreatmentmechanicals
  # GET /admintreatmentmechanicals.json
  def index
    @admintreatmentmechanicals = Admintreatmentmechanical.all
  end

  # GET /admintreatmentmechanicals/1
  # GET /admintreatmentmechanicals/1.json
  def show
  end

  # GET /admintreatmentmechanicals/new
  def new
    @admintreatmentmechanical = Admintreatmentmechanical.new
  end

  # GET /admintreatmentmechanicals/1/edit
  def edit
  end

  # POST /admintreatmentmechanicals
  # POST /admintreatmentmechanicals.json
  def create
    @admintreatmentmechanical = Admintreatmentmechanical.new(admintreatmentmechanical_params)

    respond_to do |format|
      if @admintreatmentmechanical.save
        format.html { redirect_to @admintreatmentmechanical, notice: 'Admintreatmentmechanical was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admintreatmentmechanical }
      else
        format.html { render action: 'new' }
        format.json { render json: @admintreatmentmechanical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admintreatmentmechanicals/1
  # PATCH/PUT /admintreatmentmechanicals/1.json
  def update
    respond_to do |format|
      if @admintreatmentmechanical.update(admintreatmentmechanical_params)
        format.html { redirect_to @admintreatmentmechanical, notice: 'Admintreatmentmechanical was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admintreatmentmechanical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admintreatmentmechanicals/1
  # DELETE /admintreatmentmechanicals/1.json
  def destroy
    @admintreatmentmechanical.destroy
    respond_to do |format|
      format.html { redirect_to admintreatmentmechanicals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admintreatmentmechanical
      @admintreatmentmechanical = Admintreatmentmechanical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admintreatmentmechanical_params
      params.require(:admintreatmentmechanical).permit(:mechanical)
    end
end
