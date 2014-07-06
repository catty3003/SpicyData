class ReferencetypesController < ApplicationController
  before_action :set_referencetype, only: [:show, :edit, :update, :destroy]

  # GET /referencetypes
  # GET /referencetypes.json
  def index
    @referencetypes = Referencetype.all
  end

  # GET /referencetypes/1
  # GET /referencetypes/1.json
  def show
  end

  # GET /referencetypes/new
  def new
    @referencetype = Referencetype.new
  end

  # GET /referencetypes/1/edit
  def edit
  end

  # POST /referencetypes
  # POST /referencetypes.json
  def create
    @referencetype = Referencetype.new(referencetype_params)

    respond_to do |format|
      if @referencetype.save
        format.html { redirect_to @referencetype, notice: 'Referencetype was successfully created.' }
        format.json { render action: 'show', status: :created, location: @referencetype }
      else
        format.html { render action: 'new' }
        format.json { render json: @referencetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /referencetypes/1
  # PATCH/PUT /referencetypes/1.json
  def update
    respond_to do |format|
      if @referencetype.update(referencetype_params)
        format.html { redirect_to @referencetype, notice: 'Referencetype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @referencetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referencetypes/1
  # DELETE /referencetypes/1.json
  def destroy
    @referencetype.destroy
    respond_to do |format|
      format.html { redirect_to referencetypes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referencetype
      @referencetype = Referencetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referencetype_params
      params.require(:referencetype).permit(:type_of_literatur)
    end
end
