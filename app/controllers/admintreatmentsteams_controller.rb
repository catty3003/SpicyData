class AdmintreatmentsteamsController < ApplicationController
  before_action :set_admintreatmentsteam, only: [:show, :edit, :update, :destroy]

  # GET /admintreatmentsteams
  # GET /admintreatmentsteams.json
  def index
    @admintreatmentsteams = Admintreatmentsteam.all
  end

  # GET /admintreatmentsteams/1
  # GET /admintreatmentsteams/1.json
  def show
  end

  # GET /admintreatmentsteams/new
  def new
    @admintreatmentsteam = Admintreatmentsteam.new
  end

  # GET /admintreatmentsteams/1/edit
  def edit
  end

  # POST /admintreatmentsteams
  # POST /admintreatmentsteams.json
  def create
    @admintreatmentsteam = Admintreatmentsteam.new(admintreatmentsteam_params)

    respond_to do |format|
      if @admintreatmentsteam.save
        format.html { redirect_to @admintreatmentsteam, notice: 'Admintreatmentsteam was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admintreatmentsteam }
      else
        format.html { render action: 'new' }
        format.json { render json: @admintreatmentsteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admintreatmentsteams/1
  # PATCH/PUT /admintreatmentsteams/1.json
  def update
    respond_to do |format|
      if @admintreatmentsteam.update(admintreatmentsteam_params)
        format.html { redirect_to @admintreatmentsteam, notice: 'Admintreatmentsteam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admintreatmentsteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admintreatmentsteams/1
  # DELETE /admintreatmentsteams/1.json
  def destroy
    @admintreatmentsteam.destroy
    respond_to do |format|
      format.html { redirect_to admintreatmentsteams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admintreatmentsteam
      @admintreatmentsteam = Admintreatmentsteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admintreatmentsteam_params
      params.require(:admintreatmentsteam).permit(:steam)
    end
end
