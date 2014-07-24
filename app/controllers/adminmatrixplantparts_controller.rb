class AdminmatrixplantpartsController < ApplicationController
  before_action :set_adminmatrixplantpart, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /adminmatrixplantparts
  # GET /adminmatrixplantparts.json
  def index
    @adminmatrixplantparts = Adminmatrixplantpart.all
  end

  # GET /adminmatrixplantparts/1
  # GET /adminmatrixplantparts/1.json
  def show
  end

  # GET /adminmatrixplantparts/new
  def new
    @adminmatrixplantpart = Adminmatrixplantpart.new
  end

  # GET /adminmatrixplantparts/1/edit
  def edit
  end

  # POST /adminmatrixplantparts
  # POST /adminmatrixplantparts.json
  def create
    @adminmatrixplantpart = Adminmatrixplantpart.new(adminmatrixplantpart_params)

    respond_to do |format|
      if @adminmatrixplantpart.save
        format.html { redirect_to @adminmatrixplantpart, notice: 'Adminmatrixplantpart was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminmatrixplantpart }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminmatrixplantpart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminmatrixplantparts/1
  # PATCH/PUT /adminmatrixplantparts/1.json
  def update
    respond_to do |format|
      if @adminmatrixplantpart.update(adminmatrixplantpart_params)
        format.html { redirect_to @adminmatrixplantpart, notice: 'Adminmatrixplantpart was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminmatrixplantpart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminmatrixplantparts/1
  # DELETE /adminmatrixplantparts/1.json
  def destroy
    @adminmatrixplantpart.destroy
    respond_to do |format|
      format.html { redirect_to adminmatrixplantparts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminmatrixplantpart
      @adminmatrixplantpart = Adminmatrixplantpart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminmatrixplantpart_params
      params.require(:adminmatrixplantpart).permit(:plant_part)
    end
end
