class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy, :clone]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /agents
  # GET /agents.json
  def index
    #@agents = Agent.all

    @search = Agent.search(params[:q])
    @agents = @search.result
    @search.build_condition 

    respond_to do |format|
      format.html
      format.csv { send_data @agents.to_csv }
      format.xls
    end
  end

  # GET /agents/1
  # GET /agents/1.json
  def show
    if params[:clone]
      @agent = @agent.dupli


      respond_to do |format|
        format.html { render action: "new", notice: 'agent was successfully cloned.' }
      end
      else
    end
  end

  # GET /agents/new
  def new
    @agent = Agent.new
    @agent.agentparams.build
  end

  # GET /agents/1/edit
  def edit
  end

  # POST /agents
  # POST /agents.json
  def create
    @agent = current_user.agents.new(agent_params)

    respond_to do |format|
      if @agent.save
        format.html { redirect_to @agent, notice: 'Agent was successfully created.' }
        format.json { render action: 'show', status: :created, location: @agent }
      else
        format.html { render action: 'new' }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agents/1
  # PATCH/PUT /agents/1.json
  def update
    respond_to do |format|
      if @agent.update(agent_params)
        format.html { redirect_to @agent, notice: 'Agent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @agent.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # DELETE /agents/1
  # DELETE /agents/1.json
  def destroy
    @agent.destroy
    respond_to do |format|
      format.html { redirect_to agents_url, notice: 'Agent was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agent
      @agent = Agent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agent_params
      params.require(:agent).permit(:adminagentname_id, :adminagentfamily_id, :adminagentgenu_id, :adminagentspec_id, :subspecies, :serovar, :other_agent_name, :ref_number, :rate_of_illness, :morbidity, :mortality, :isolation_source, :natural_occurence, :a_comment, :reference_id, :user_id, agentparams_attributes: [:id, :infectious_dose, :level_of_infectious_dose, :infected_species, :_destroy])
    end
end
