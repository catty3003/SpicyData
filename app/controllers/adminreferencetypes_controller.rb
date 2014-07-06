class AdminreferencetypesController < ApplicationController
  before_action :set_adminreferencetype, only: [:show, :edit, :update, :destroy]

  # GET /adminreferencetypes
  # GET /adminreferencetypes.json
  def index
    @adminreferencetypes = Adminreferencetype.all
  end

  # GET /adminreferencetypes/1
  # GET /adminreferencetypes/1.json
  def show
  end

  # GET /adminreferencetypes/new
  def new
    @adminreferencetype = Adminreferencetype.new
  end

  # GET /adminreferencetypes/1/edit
  def edit
  end

  # POST /adminreferencetypes
  # POST /adminreferencetypes.json
  def create
    @adminreferencetype = Adminreferencetype.new(adminreferencetype_params)

    respond_to do |format|
      if @adminreferencetype.save
        format.html { redirect_to @adminreferencetype, notice: 'Adminreferencetype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminreferencetype }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminreferencetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminreferencetypes/1
  # PATCH/PUT /adminreferencetypes/1.json
  def update
    respond_to do |format|
      if @adminreferencetype.update(adminreferencetype_params)
        format.html { redirect_to @adminreferencetype, notice: 'Adminreferencetype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminreferencetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminreferencetypes/1
  # DELETE /adminreferencetypes/1.json
  def destroy
    @adminreferencetype.destroy
    respond_to do |format|
      format.html { redirect_to adminreferencetypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminreferencetype
      @adminreferencetype = Adminreferencetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminreferencetype_params
      params.require(:adminreferencetype).permit(:type_of_literatur)
    end
end
