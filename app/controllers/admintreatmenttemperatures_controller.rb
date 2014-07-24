class AdmintreatmenttemperaturesController < ApplicationController
  before_action :set_admintreatmenttemperature, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /admintreatmenttemperatures
  # GET /admintreatmenttemperatures.json
  def index
    @admintreatmenttemperatures = Admintreatmenttemperature.all
  end

  # GET /admintreatmenttemperatures/1
  # GET /admintreatmenttemperatures/1.json
  def show
  end

  # GET /admintreatmenttemperatures/new
  def new
    @admintreatmenttemperature = Admintreatmenttemperature.new
  end

  # GET /admintreatmenttemperatures/1/edit
  def edit
  end

  # POST /admintreatmenttemperatures
  # POST /admintreatmenttemperatures.json
  def create
    @admintreatmenttemperature = Admintreatmenttemperature.new(admintreatmenttemperature_params)

    respond_to do |format|
      if @admintreatmenttemperature.save
        format.html { redirect_to @admintreatmenttemperature, notice: 'Admintreatmenttemperature was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admintreatmenttemperature }
      else
        format.html { render action: 'new' }
        format.json { render json: @admintreatmenttemperature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admintreatmenttemperatures/1
  # PATCH/PUT /admintreatmenttemperatures/1.json
  def update
    respond_to do |format|
      if @admintreatmenttemperature.update(admintreatmenttemperature_params)
        format.html { redirect_to @admintreatmenttemperature, notice: 'Admintreatmenttemperature was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admintreatmenttemperature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admintreatmenttemperatures/1
  # DELETE /admintreatmenttemperatures/1.json
  def destroy
    @admintreatmenttemperature.destroy
    respond_to do |format|
      format.html { redirect_to admintreatmenttemperatures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admintreatmenttemperature
      @admintreatmenttemperature = Admintreatmenttemperature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admintreatmenttemperature_params
      params.require(:admintreatmenttemperature).permit(:temperature)
    end
end
