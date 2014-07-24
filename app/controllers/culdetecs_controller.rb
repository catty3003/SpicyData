class CuldetecsController < ApplicationController
  before_action :set_culdetec, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /culdetecs
  # GET /culdetecs.json
  def index
    @culdetecs = Culdetec.all
  end

  # GET /culdetecs/1
  # GET /culdetecs/1.json
  def show
  end

  # GET /culdetecs/new
  def new
    @culdetec = Culdetec.new
  end

  # GET /culdetecs/1/edit
  def edit
  end

  # POST /culdetecs
  # POST /culdetecs.json
  def create
    @culdetec = Culdetec.new(culdetec_params)

    respond_to do |format|
      if @culdetec.save
        format.html { redirect_to @culdetec, notice: 'Culdetec was successfully created.' }
        format.json { render action: 'show', status: :created, location: @culdetec }
      else
        format.html { render action: 'new' }
        format.json { render json: @culdetec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /culdetecs/1
  # PATCH/PUT /culdetecs/1.json
  def update
    respond_to do |format|
      if @culdetec.update(culdetec_params)
        format.html { redirect_to @culdetec, notice: 'Culdetec was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @culdetec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /culdetecs/1
  # DELETE /culdetecs/1.json
  def destroy
    @culdetec.destroy
    respond_to do |format|
      format.html { redirect_to culdetecs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_culdetec
      @culdetec = Culdetec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def culdetec_params
      params.require(:culdetec).permit(:medium, :agar, :incubation_duration, :incubation_duration_unit, :incubation_temp, :sample_volume_per_disc, :medium_volume_per_disc, :detection_id)
    end
end
