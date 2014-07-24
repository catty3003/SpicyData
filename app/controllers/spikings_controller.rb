class SpikingsController < ApplicationController
  before_action :set_spiking, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /spikings
  # GET /spikings.json
  def index
    #@spikings = Spiking.all
    @search = Spiking.search(params[:q])
    @spikings = @search.result
    @search.build_condition 
    
    respond_to do |format|
      format.html
      format.csv { send_data @spikings.to_csv }
      format.xls
    end    
  end

  # GET /spikings/1
  # GET /spikings/1.json
  def show
    if params[:clone]
      @spiking = @spiking.dupli


      respond_to do |format|
        format.html { render action: "new", notice: 'spiking was successfully cloned.' }
      end
      else
    end
  end

  # GET /spikings/new
  def new
    @spiking = Spiking.new
    @spiking.spikingparams.build
  end

  # GET /spikings/1/edit
  def edit
  end

  # POST /spikings
  # POST /spikings.json
  def create
    @spiking = Spiking.new(spiking_params)

    respond_to do |format|
      if @spiking.save
        format.html { redirect_to @spiking, notice: 'Spiking was successfully created.' }
        format.json { render action: 'show', status: :created, location: @spiking }
      else
        format.html { render action: 'new' }
        format.json { render json: @spiking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spikings/1
  # PATCH/PUT /spikings/1.json
  def update
    respond_to do |format|
      if @spiking.update(spiking_params)
        format.html { redirect_to @spiking, notice: 'Spiking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @spiking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spikings/1
  # DELETE /spikings/1.json
  def destroy
    @spiking.destroy
    respond_to do |format|
      format.html { redirect_to spikings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spiking
      @spiking = Spiking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spiking_params
      params.require(:spiking).permit(:spik_short_name, :spik_long_name, :spik_process_description, :spik_device_needed, :pros, :cons, :reference_id, :user_id, spikingparams_attributes: [:id,:spik_weight_of_sample, :spik_weight_of_sample_unit, :cfu_of_inoculum_per_ml, :cfu_per_gram_spice_spiked, :carrier_substance, :carrier_fluid, :spik_duration, :spik_duration_unit, :spik_comment, :_destroy])
    end
end
