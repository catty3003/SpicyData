class AdmindetectiontypesController < ApplicationController
  before_action :set_admindetectiontype, only: [:show, :edit, :update, :destroy]

  # GET /admindetectiontypes
  # GET /admindetectiontypes.json
  def index
    @admindetectiontypes = Admindetectiontype.all
  end

  # GET /admindetectiontypes/1
  # GET /admindetectiontypes/1.json
  def show
  end

  # GET /admindetectiontypes/new
  def new
    @admindetectiontype = Admindetectiontype.new
  end

  # GET /admindetectiontypes/1/edit
  def edit
  end

  # POST /admindetectiontypes
  # POST /admindetectiontypes.json
  def create
    @admindetectiontype = Admindetectiontype.new(admindetectiontype_params)

    respond_to do |format|
      if @admindetectiontype.save
        format.html { redirect_to @admindetectiontype, notice: 'Admindetectiontype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admindetectiontype }
      else
        format.html { render action: 'new' }
        format.json { render json: @admindetectiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admindetectiontypes/1
  # PATCH/PUT /admindetectiontypes/1.json
  def update
    respond_to do |format|
      if @admindetectiontype.update(admindetectiontype_params)
        format.html { redirect_to @admindetectiontype, notice: 'Admindetectiontype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admindetectiontype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admindetectiontypes/1
  # DELETE /admindetectiontypes/1.json
  def destroy
    @admindetectiontype.destroy
    respond_to do |format|
      format.html { redirect_to admindetectiontypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admindetectiontype
      @admindetectiontype = Admindetectiontype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admindetectiontype_params
      params.require(:admindetectiontype).permit(:detection_method_type)
    end
end
