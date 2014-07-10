class SpikingparamsController < ApplicationController
  before_action :set_spikingparam, only: [:show, :edit, :update, :destroy]

  # GET /spikingparams
  # GET /spikingparams.json
  def index
    @spikingparams = Spikingparam.all
  end

  # GET /spikingparams/1
  # GET /spikingparams/1.json
  def show
  end

  # GET /spikingparams/new
  def new
    @spikingparam = Spikingparam.new
  end

  # GET /spikingparams/1/edit
  def edit
  end

  # POST /spikingparams
  # POST /spikingparams.json
  def create
    @spikingparam = Spikingparam.new(spikingparam_params)

    respond_to do |format|
      if @spikingparam.save
        format.html { redirect_to @spikingparam, notice: 'Spikingparam was successfully created.' }
        format.json { render action: 'show', status: :created, location: @spikingparam }
      else
        format.html { render action: 'new' }
        format.json { render json: @spikingparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spikingparams/1
  # PATCH/PUT /spikingparams/1.json
  def update
    respond_to do |format|
      if @spikingparam.update(spikingparam_params)
        format.html { redirect_to @spikingparam, notice: 'Spikingparam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @spikingparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spikingparams/1
  # DELETE /spikingparams/1.json
  def destroy
    @spikingparam.destroy
    respond_to do |format|
      format.html { redirect_to spikingparams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spikingparam
      @spikingparam = Spikingparam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spikingparam_params
      params.require(:spikingparam).permit(:spik_weight_of_sample, :spik_weight_of_sample_unit, :cfu_of_inoculum_per_ml, :cfu_per_gram_spice_spiked, :carrier_substance, :carrier_fluid, :spik_duration, :spik_duration_unit, :spik_comment, :spiking_id)
    end
end
