class TenacityparamsController < ApplicationController
  before_action :set_tenacityparam, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /tenacityparams
  # GET /tenacityparams.json
  def index
    @tenacityparams = Tenacityparam.all
  end

  # GET /tenacityparams/1
  # GET /tenacityparams/1.json
  def show
  end

  # GET /tenacityparams/new
  def new
    @tenacityparam = Tenacityparam.new
  end

  # GET /tenacityparams/1/edit
  def edit
  end

  # POST /tenacityparams
  # POST /tenacityparams.json
  def create
    @tenacityparam = Tenacityparam.new(tenacityparam_params)

    respond_to do |format|
      if @tenacityparam.save
        format.html { redirect_to @tenacityparam, notice: 'Tenacityparam was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tenacityparam }
      else
        format.html { render action: 'new' }
        format.json { render json: @tenacityparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenacityparams/1
  # PATCH/PUT /tenacityparams/1.json
  def update
    respond_to do |format|
      if @tenacityparam.update(tenacityparam_params)
        format.html { redirect_to @tenacityparam, notice: 'Tenacityparam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tenacityparam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenacityparams/1
  # DELETE /tenacityparams/1.json
  def destroy
    @tenacityparam.destroy
    respond_to do |format|
      format.html { redirect_to tenacityparams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenacityparam
      @tenacityparam = Tenacityparam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenacityparam_params
      params.require(:tenacityparam).permit(:tena_duration, :tena_duration_unit, :final_concentration, :f_concentration_unit, :decimal_reduction, :tena_comment, :tenacity_id)
    end
end
