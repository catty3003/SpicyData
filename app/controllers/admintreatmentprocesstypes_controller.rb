class AdmintreatmentprocesstypesController < ApplicationController
  before_action :set_admintreatmentprocesstype, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /admintreatmentprocesstypes
  # GET /admintreatmentprocesstypes.json
  def index
    @admintreatmentprocesstypes = Admintreatmentprocesstype.all
  end

  # GET /admintreatmentprocesstypes/1
  # GET /admintreatmentprocesstypes/1.json
  def show
  end

  # GET /admintreatmentprocesstypes/new
  def new
    @admintreatmentprocesstype = Admintreatmentprocesstype.new
  end

  # GET /admintreatmentprocesstypes/1/edit
  def edit
  end

  # POST /admintreatmentprocesstypes
  # POST /admintreatmentprocesstypes.json
  def create
    @admintreatmentprocesstype = Admintreatmentprocesstype.new(admintreatmentprocesstype_params)

    respond_to do |format|
      if @admintreatmentprocesstype.save
        format.html { redirect_to @admintreatmentprocesstype, notice: 'Admintreatmentprocesstype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admintreatmentprocesstype }
      else
        format.html { render action: 'new' }
        format.json { render json: @admintreatmentprocesstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admintreatmentprocesstypes/1
  # PATCH/PUT /admintreatmentprocesstypes/1.json
  def update
    respond_to do |format|
      if @admintreatmentprocesstype.update(admintreatmentprocesstype_params)
        format.html { redirect_to @admintreatmentprocesstype, notice: 'Admintreatmentprocesstype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admintreatmentprocesstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admintreatmentprocesstypes/1
  # DELETE /admintreatmentprocesstypes/1.json
  def destroy
    @admintreatmentprocesstype.destroy
    respond_to do |format|
      format.html { redirect_to admintreatmentprocesstypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admintreatmentprocesstype
      @admintreatmentprocesstype = Admintreatmentprocesstype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admintreatmentprocesstype_params
      params.require(:admintreatmentprocesstype).permit(:process_type)
    end
end
