class AdmintreatmentfumigationsController < ApplicationController
  before_action :set_admintreatmentfumigation, only: [:show, :edit, :update, :destroy]

  # GET /admintreatmentfumigations
  # GET /admintreatmentfumigations.json
  def index
    @admintreatmentfumigations = Admintreatmentfumigation.all
  end

  # GET /admintreatmentfumigations/1
  # GET /admintreatmentfumigations/1.json
  def show
  end

  # GET /admintreatmentfumigations/new
  def new
    @admintreatmentfumigation = Admintreatmentfumigation.new
  end

  # GET /admintreatmentfumigations/1/edit
  def edit
  end

  # POST /admintreatmentfumigations
  # POST /admintreatmentfumigations.json
  def create
    @admintreatmentfumigation = Admintreatmentfumigation.new(admintreatmentfumigation_params)

    respond_to do |format|
      if @admintreatmentfumigation.save
        format.html { redirect_to @admintreatmentfumigation, notice: 'Admintreatmentfumigation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admintreatmentfumigation }
      else
        format.html { render action: 'new' }
        format.json { render json: @admintreatmentfumigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admintreatmentfumigations/1
  # PATCH/PUT /admintreatmentfumigations/1.json
  def update
    respond_to do |format|
      if @admintreatmentfumigation.update(admintreatmentfumigation_params)
        format.html { redirect_to @admintreatmentfumigation, notice: 'Admintreatmentfumigation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admintreatmentfumigation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admintreatmentfumigations/1
  # DELETE /admintreatmentfumigations/1.json
  def destroy
    @admintreatmentfumigation.destroy
    respond_to do |format|
      format.html { redirect_to admintreatmentfumigations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admintreatmentfumigation
      @admintreatmentfumigation = Admintreatmentfumigation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admintreatmentfumigation_params
      params.require(:admintreatmentfumigation).permit(:fumigation_gas)
    end
end
