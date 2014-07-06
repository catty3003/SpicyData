class AdmintreatmentopticalsController < ApplicationController
  before_action :set_admintreatmentoptical, only: [:show, :edit, :update, :destroy]

  # GET /admintreatmentopticals
  # GET /admintreatmentopticals.json
  def index
    @admintreatmentopticals = Admintreatmentoptical.all
  end

  # GET /admintreatmentopticals/1
  # GET /admintreatmentopticals/1.json
  def show
  end

  # GET /admintreatmentopticals/new
  def new
    @admintreatmentoptical = Admintreatmentoptical.new
  end

  # GET /admintreatmentopticals/1/edit
  def edit
  end

  # POST /admintreatmentopticals
  # POST /admintreatmentopticals.json
  def create
    @admintreatmentoptical = Admintreatmentoptical.new(admintreatmentoptical_params)

    respond_to do |format|
      if @admintreatmentoptical.save
        format.html { redirect_to @admintreatmentoptical, notice: 'Admintreatmentoptical was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admintreatmentoptical }
      else
        format.html { render action: 'new' }
        format.json { render json: @admintreatmentoptical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admintreatmentopticals/1
  # PATCH/PUT /admintreatmentopticals/1.json
  def update
    respond_to do |format|
      if @admintreatmentoptical.update(admintreatmentoptical_params)
        format.html { redirect_to @admintreatmentoptical, notice: 'Admintreatmentoptical was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admintreatmentoptical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admintreatmentopticals/1
  # DELETE /admintreatmentopticals/1.json
  def destroy
    @admintreatmentoptical.destroy
    respond_to do |format|
      format.html { redirect_to admintreatmentopticals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admintreatmentoptical
      @admintreatmentoptical = Admintreatmentoptical.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admintreatmentoptical_params
      params.require(:admintreatmentoptical).permit(:optical)
    end
end
