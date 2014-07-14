class DetectionsController < ApplicationController
  before_action :set_detection, only: [:show, :edit, :update, :destroy]

  # GET /detections
  # GET /detections.json
  def index
    @detections = Detection.all
  end

  # GET /detections/1
  # GET /detections/1.json
  def show
  end

  # GET /detections/new
  def new
    @detection = Detection.new
    @detection.culdetecs.build
  end

  # GET /detections/1/edit
  def edit
  end

  # POST /detections
  # POST /detections.json
  def create
    @detection = Detection.new(detection_params)

    respond_to do |format|
      if @detection.save
        format.html { redirect_to @detection, notice: 'Detection was successfully created.' }
        format.json { render action: 'show', status: :created, location: @detection }
      else
        format.html { render action: 'new' }
        format.json { render json: @detection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detections/1
  # PATCH/PUT /detections/1.json
  def update
    respond_to do |format|
      if @detection.update(detection_params)
        format.html { redirect_to @detection, notice: 'Detection was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @detection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detections/1
  # DELETE /detections/1.json
  def destroy
    @detection.destroy
    respond_to do |format|
      format.html { redirect_to detections_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detection
      @detection = Detection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detection_params
      params.require(:detection).permit(:d_short_name, :d_long_name, :d_method_validated_for_condiments, :d_process_description, :d_weight_of_sample, :d_weight_of_sample_unit, :detection_method_dilution, :admindetectiontype_id, :duration_until_result, :duration_until_result_unit, :target_gen, :target_protein, :other_characteristic, :technique, :verification, :interpretation, :d_device_needed, :method_for_comparison, :lod, :sensitivity, :specifity, :reliability_score, :d_comment, :reference_id, :user_id, culdetecs_attributes: [:id, :medium, :agar, :incubation_duration, :incubation_duration_unit, :incubation_temp, :sample_volume_per_disc, :medium_volume_per_disc, :_destroy])
    end
end
