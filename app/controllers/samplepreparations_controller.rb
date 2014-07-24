class SamplepreparationsController < ApplicationController
  before_action :set_samplepreparation, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /samplepreparations
  # GET /samplepreparations.json
  def index
    #@samplepreparations = Samplepreparation.all
    @search = Samplepreparation.search(params[:q])
    @samplepreparations = @search.result
    @search.build_condition 
    
    respond_to do |format|
      format.html
      format.csv { send_data @samplepreparations.to_csv }
      format.xls
    end    
  end

  # GET /samplepreparations/1
  # GET /samplepreparations/1.json
  def show
    if params[:clone]
      @samplepreparation = @samplepreparation.dupli


      respond_to do |format|
        format.html { render action: "new", notice: 'samplepreparation was successfully cloned.' }
      end
      else
    end
  end

  # GET /samplepreparations/new
  def new
    @samplepreparation = Samplepreparation.new
  end

  # GET /samplepreparations/1/edit
  def edit
  end

  # POST /samplepreparations
  # POST /samplepreparations.json
  def create
    @samplepreparation = current_user.samplepreparation.new(samplepreparation_params)

    respond_to do |format|
      if @samplepreparation.save
        format.html { redirect_to @samplepreparation, notice: 'Samplepreparation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @samplepreparation }
      else
        format.html { render action: 'new' }
        format.json { render json: @samplepreparation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /samplepreparations/1
  # PATCH/PUT /samplepreparations/1.json
  def update
    respond_to do |format|
      if @samplepreparation.update(samplepreparation_params)
        format.html { redirect_to @samplepreparation, notice: 'Samplepreparation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @samplepreparation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /samplepreparations/1
  # DELETE /samplepreparations/1.json
  def destroy
    @samplepreparation.destroy
    respond_to do |format|
      format.html { redirect_to samplepreparations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_samplepreparation
      @samplepreparation = Samplepreparation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def samplepreparation_params
      params.require(:samplepreparation).permit(:samprep_short_name, :samprep_long_name, :samprep_method_validated_for_condiments, :samprep_process_description, :spik_weight_of_sample, :spik_weight_of_sample_unit, :dilution_fuid, :first_dilution_ratio, :homogenize_with, :enrichment, :dna_extraction, :rna_extraction, :protein_extraction, :homogenizing_method, :cell_lysis, :applied_kit, :other_samprep_method_type, :samprep_method_type_details_text, :samprep_duration, :samprep_duration_unit, :samprep_comment, :reference_id, :user_id)
    end
end
