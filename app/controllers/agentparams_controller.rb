class AgentparamsController < ApplicationController
  before_action :set_agentparam, only: [:show, :edit, :update, :destroy]

  # GET /agentparams
  # GET /agentparams.json
  def index
    @agentparams = Agentparam.all
  end

  # GET /agentparams/1
  # GET /agentparams/1.json
  def show
  end

  # GET /agentparams/new
  def new
    @agentparam = Agentparam.new
  end

  # GET /agentparams/1/edit
  def edit
  end

  # POST /agentparams
  # POST /agentparams.json
  def create
    @agentparam = Agentparam.new(agentparam_params)

    respond_to do |format|
      if @agentparam.save
        format.html { redirect_to @agentparam, notice: 'Agentparam was successfully created.' }
        format.json { render action: 'show', status: :created, location: @agentparam }
      else
        format.html { render action: 'new' }
        format.json { render json: @agentparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agentparams/1
  # PATCH/PUT /agentparams/1.json
  def update
    respond_to do |format|
      if @agentparam.update(agentparam_params)
        format.html { redirect_to @agentparam, notice: 'Agentparam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @agentparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agentparams/1
  # DELETE /agentparams/1.json
  def destroy
    @agentparam.destroy
    respond_to do |format|
      format.html { redirect_to agentparams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agentparam
      @agentparam = Agentparam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agentparam_params
      params.require(:agentparam).permit(:infectious_dose, :level_of_infectious_dose, :infected_species, :agent_id)
    end
end
