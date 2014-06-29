class TenacityrerultsController < ApplicationController
  before_action :set_tenacityrerult, only: [:show, :edit, :update, :destroy]

  # GET /tenacityrerults
  # GET /tenacityrerults.json
  def index
    @tenacityrerults = Tenacityrerult.all
  end

  # GET /tenacityrerults/1
  # GET /tenacityrerults/1.json
  def show
  end

  # GET /tenacityrerults/new
  def new
    @tenacityrerult = Tenacityrerult.new
  end

  # GET /tenacityrerults/1/edit
  def edit
  end

  # POST /tenacityrerults
  # POST /tenacityrerults.json
  def create
    @tenacityrerult = Tenacityrerult.new(tenacityrerult_params)

    respond_to do |format|
      if @tenacityrerult.save
        format.html { redirect_to @tenacityrerult, notice: 'Tenacityrerult was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tenacityrerult }
      else
        format.html { render action: 'new' }
        format.json { render json: @tenacityrerult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenacityrerults/1
  # PATCH/PUT /tenacityrerults/1.json
  def update
    respond_to do |format|
      if @tenacityrerult.update(tenacityrerult_params)
        format.html { redirect_to @tenacityrerult, notice: 'Tenacityrerult was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tenacityrerult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tenacityrerults/1
  # DELETE /tenacityrerults/1.json
  def destroy
    @tenacityrerult.destroy
    respond_to do |format|
      format.html { redirect_to tenacityrerults_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenacityrerult
      @tenacityrerult = Tenacityrerult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tenacityrerult_params
      params.require(:tenacityrerult).permit(:tena_duration, :tena_duration_unit, :final_concentration, :f_concentration_unit, :decimal_reduction, :tena_comment, :tenacity_id)
    end
end
