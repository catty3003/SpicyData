class AdminagentfamiliesController < ApplicationController
  before_action :set_adminagentfamily, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /adminagentfamilies
  # GET /adminagentfamilies.json
  def index
    @adminagentfamilies = Adminagentfamily.all
  end

  # GET /adminagentfamilies/1
  # GET /adminagentfamilies/1.json
  def show
  end

  # GET /adminagentfamilies/new
  def new
    @adminagentfamily = Adminagentfamily.new
  end

  # GET /adminagentfamilies/1/edit
  def edit
  end

  # POST /adminagentfamilies
  # POST /adminagentfamilies.json
  def create
    @adminagentfamily = Adminagentfamily.new(adminagentfamily_params)

    respond_to do |format|
      if @adminagentfamily.save
        format.html { redirect_to @adminagentfamily, notice: 'Adminagentfamily was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminagentfamily }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminagentfamily.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminagentfamilies/1
  # PATCH/PUT /adminagentfamilies/1.json
  def update
    respond_to do |format|
      if @adminagentfamily.update(adminagentfamily_params)
        format.html { redirect_to @adminagentfamily, notice: 'Adminagentfamily was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminagentfamily.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminagentfamilies/1
  # DELETE /adminagentfamilies/1.json
  def destroy
    @adminagentfamily.destroy
    respond_to do |format|
      format.html { redirect_to adminagentfamilies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminagentfamily
      @adminagentfamily = Adminagentfamily.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminagentfamily_params
      params.require(:adminagentfamily).permit(:a_family)
    end
end
