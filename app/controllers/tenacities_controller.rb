class TenacitiesController < ApplicationController
  before_action :set_tenacity, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /tenacities
  # GET /tenacities.json
  def index
    #@tenacities = Tenacity.all
    @search = Tenacity.search(params[:q])
    @tenacities = @search.result
    @search.build_condition 
        
    respond_to do |format|
      format.html
      format.csv { send_data @tenacities.to_csv }
      format.xls
    end    
  end

  # GET /tenacities/1
  # GET /tenacities/1.json
  def show
    if params[:clone]
      @tenacity = @tenacity.dupli


      respond_to do |format|
        format.html { render action: "new", notice: 'tenacity was successfully cloned.' }
      end
      else
    end
  end

  # GET /tenacities/new
  def new
    @tenacity = Tenacity.new
    @tenacity.tenacityparams.build  
  end

  # GET /tenacities/1/edit
  def edit
  end

  # POST /tenacities
  # POST /tenacities.json
  def create
    @tenacity = current_user.tenacities.new(tenacity_params)

    respond_to do |format|
      if @tenacity.save
        format.html { redirect_to @tenacity, notice: 'Tenacity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tenacity }
      else
        format.html { render action: 'new' }
        format.json { render json: @tenacity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenacities/1
  # PATCH/PUT /tenacities/1.json
  def update
    respond_to do |format|
      if @tenacity.update(tenacity_params)
        format.html { redirect_to @tenacity, notice: 'Tenacity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tenacity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenacities/1
  # DELETE /tenacities/1.json
  def destroy
    @tenacity.destroy
    respond_to do |format|
      format.html { redirect_to tenacities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenacity
      @tenacity = Tenacity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenacity_params
      params.require(:tenacity).permit(:total_sample_number, :inoculum_concentration_initial, :i_concentration_unit, :reference_id, :user_id, tenacityparams_attributes: [:id, :tena_duration, :tena_duration_unit, :final_concentration, :f_concentration_unit, :decimal_reduction, :tena_comment, :_destroy])
    end
end
