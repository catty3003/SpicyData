class ContaminationstatusesController < ApplicationController
  before_action :set_contaminationstatus, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /contaminationstatuses
  # GET /contaminationstatuses.json
  def index
    @contaminationstatuses = Contaminationstatus.all

    @contaminationstatuses = @contaminationstatuses.where(matrix_id: params[:matrix_id]) if params[:matrix_id]
    @contaminationstatuses = @contaminationstatuses.where(agent_id: params[:agent_id]) if params[:agent_id]
    @contaminationstatuses = @contaminationstatuses.where(spiking_id: params[:spiking_id]) if params[:spiking_id]
    @contaminationstatuses = @contaminationstatuses.where(treatment_id: params[:treatment_id]) if params[:treatment_id]
    @contaminationstatuses = @contaminationstatuses.where(samplepreparation_id: params[:samplepreparation_id]) if params[:samplepreparation_id]
    @contaminationstatuses = @contaminationstatuses.where(detection_id: params[:detection_id]) if params[:detection_id]
    

    respond_to do |format|
      format.html
      format.csv { send_data @agents.to_csv }
      format.xls
    end
   
    @references = Reference.all
    @references_for_dropdown = []
    @references.each do |i|
      @references_for_dropdown << [i.full_ref, i.id]
    end

def search
  index
  render :index
end

    @matrices = Matrix.all
    @matrices_for_dropdown = []
    @matrices.each do |i|
      # class of dependent option must be equal to id of parent one
      @matrices_for_dropdown << [i.full_matrix, i.id, {class: i.reference.id}]
    end

    @agents = Agent.all
    @agents_for_dropdown = []
    @agents.each do |i|
      # class of dependent option must be equal to id of parent one
      @agents_for_dropdown << [i.full_agent, i.id, {class: i.reference.id}]
    end

    @spikings = Spiking.all
    @spikings_for_dropdown = []
    @spikings.each do |i|
      # class of dependent option must be equal to id of parent one
      @spikings_for_dropdown << [i.full_spik, i.id, {class: i.reference.id}]
    end

    @treatments = Treatment.all
    @treatments_for_dropdown = []
    @treatments.each do |i|
      # class of dependent option must be equal to id of parent one
      @treatments_for_dropdown << [i.full_treat, i.id, {class: i.reference.id}]
    end

    @samplepreparations = Samplepreparation.all
    @samplepreparations_for_dropdown = []
    @samplepreparations.each do |i|
      # class of dependent option must be equal to id of parent one
      @samplepreparations_for_dropdown << [i.full_sampleprep, i.id, {class: i.reference.id}]
    end

    @detections = Detection.all
    @detections_for_dropdown = []
    @detections.each do |i|
      # class of dependent option must be equal to id of parent one
      @detections_for_dropdown << [i.full_detec, i.id, {class: i.reference.id}]
    end

    @tenacities = Tenacity.all
    @tenacities_for_dropdown = []
    @tenacities.each do |i|
      # class of dependent option must be equal to id of parent one
      @tenacities_for_dropdown << [i.full_tena, i.id, {class: i.reference.id}]
    end

    @results = Result.all

  end

  # GET /contaminationstatuses/1
  # GET /contaminationstatuses/1.json
  def show
    if params[:clone]
      @contaminationstatus = @contaminationstatus.dupli 


      respond_to do |format|
        format.html { render action: "clone", notice: 'agent was successfully cloned.' }
      end
      else
    end    
  end

  def clone
    @contaminationstatus = Contaminationstatus.new
  end

  # GET /contaminationstatuses/new
  def new
    @contaminationstatus = Contaminationstatus.new

    @references = Reference.all
    @references_for_dropdown = []
    @references.each do |i|
      @references_for_dropdown << [i.full_ref, i.id]
    end

    @matrices = Matrix.all
    @matrices_for_dropdown = []
    @matrices.each do |i|
      # class of dependent option must be equal to id of parent one
      @matrices_for_dropdown << [i.full_matrix, i.id, {class: i.reference.id}]
    end

    @agents = Agent.all
    @agents_for_dropdown = []
    @agents.each do |i|
      # class of dependent option must be equal to id of parent one
      @agents_for_dropdown << [i.full_agent, i.id, {class: i.reference.id}]
    end

    @spikings = Spiking.all
    @spikings_for_dropdown = []
    @spikings.each do |i|
      # class of dependent option must be equal to id of parent one
      @spikings_for_dropdown << [i.full_spik, i.id, {class: i.reference.id}]
    end

    @treatments = Treatment.all
    @treatments_for_dropdown = []
    @treatments.each do |i|
      # class of dependent option must be equal to id of parent one
      @treatments_for_dropdown << [i.full_treat, i.id, {class: i.reference.id}]
    end

    @samplepreparations = Samplepreparation.all
    @samplepreparations_for_dropdown = []
    @samplepreparations.each do |i|
      # class of dependent option must be equal to id of parent one
      @samplepreparations_for_dropdown << [i.full_sampleprep, i.id, {class: i.reference.id}]
    end

    @detections = Detection.all
    @detections_for_dropdown = []
    @detections.each do |i|
      # class of dependent option must be equal to id of parent one
      @detections_for_dropdown << [i.full_detec, i.id, {class: i.reference.id}]
    end

    @tenacities = Tenacity.all
    @tenacities_for_dropdown = []
    @tenacities.each do |i|
      # class of dependent option must be equal to id of parent one
      @tenacities_for_dropdown << [i.full_tena, i.id, {class: i.reference.id}]
    end
 
  end

  # GET /contaminationstatuses/1/edit
  def edit

    @references = Reference.all
    @references_for_dropdown = []
    @references.each do |i|
      @references_for_dropdown << [i.full_ref, i.id]
    end

    @matrices = Matrix.all
    @matrices_for_dropdown = []
    @matrices.each do |i|
      # class of dependent option must be equal to id of parent one
      @matrices_for_dropdown << [i.full_matrix, i.id, {class: i.reference.id}]
    end

    @agents = Agent.all
    @agents_for_dropdown = []
    @agents.each do |i|
      # class of dependent option must be equal to id of parent one
      @agents_for_dropdown << [i.full_agent, i.id, {class: i.reference.id}]
    end

    @spikings = Spiking.all
    @spikings_for_dropdown = []
    @spikings.each do |i|
      # class of dependent option must be equal to id of parent one
      @spikings_for_dropdown << [i.full_spik, i.id, {class: i.reference.id}]
    end

    @treatments = Treatment.all
    @treatments_for_dropdown = []
    @treatments.each do |i|
      # class of dependent option must be equal to id of parent one
      @treatments_for_dropdown << [i.full_treat, i.id, {class: i.reference.id}]
    end

    @samplepreparations = Samplepreparation.all
    @samplepreparations_for_dropdown = []
    @samplepreparations.each do |i|
      # class of dependent option must be equal to id of parent one
      @samplepreparations_for_dropdown << [i.full_sampleprep, i.id, {class: i.reference.id}]
    end

    @detections = Detection.all
    @detections_for_dropdown = []
    @detections.each do |i|
      # class of dependent option must be equal to id of parent one
      @detections_for_dropdown << [i.full_detec, i.id, {class: i.reference.id}]
    end

    @tenacities = Tenacity.all
    @tenacities_for_dropdown = []
    @tenacities.each do |i|
      # class of dependent option must be equal to id of parent one
      @tenacities_for_dropdown << [i.full_tena, i.id, {class: i.reference.id}]
    end

  end

  # POST /contaminationstatuses
  # POST /contaminationstatuses.json
  def create
    @contaminationstatus = Contaminationstatus.new(contaminationstatus_params)

    respond_to do |format|
      if @contaminationstatus.save
        format.html { redirect_to @contaminationstatus, notice: 'Contaminationstatus was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contaminationstatus }
      else
        format.html { render action: 'new' }
        format.json { render json: @contaminationstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contaminationstatuses/1
  # PATCH/PUT /contaminationstatuses/1.json
  def update
    respond_to do |format|
      if @contaminationstatus.update(contaminationstatus_params)
        format.html { redirect_to @contaminationstatus, notice: 'Contaminationstatus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contaminationstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contaminationstatuses/1
  # DELETE /contaminationstatuses/1.json
  def destroy
    @contaminationstatus.destroy
    respond_to do |format|
      format.html { redirect_to contaminationstatuses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contaminationstatus
      @contaminationstatus = Contaminationstatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contaminationstatus_params
      params.require(:contaminationstatus).permit(:cfu_natural_contamination, :cfu_natural_contamination_unit, :matrix_id, :agent_id, :tenacity_id, :treatment_id, :spiking_id, :samplepreparation_id, :detection_id, :result_id, :reference_id, :user_id)
    end
end
