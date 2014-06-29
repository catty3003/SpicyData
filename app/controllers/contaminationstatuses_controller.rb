class ContaminationstatusesController < ApplicationController
  before_action :set_contaminationstatus, only: [:show, :edit, :update, :destroy]

  # GET /contaminationstatuses
  # GET /contaminationstatuses.json
  def index
    @contaminationstatuses = Contaminationstatus.all
  end

  # GET /contaminationstatuses/1
  # GET /contaminationstatuses/1.json
  def show
  end

  # GET /contaminationstatuses/new
  def new
    @contaminationstatus = Contaminationstatus.new
  end

  # GET /contaminationstatuses/1/edit
  def edit
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
