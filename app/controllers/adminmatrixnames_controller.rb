class AdminmatrixnamesController < ApplicationController
  before_action :set_adminmatrixname, only: [:show, :edit, :update, :destroy]

  # GET /adminmatrixnames
  # GET /adminmatrixnames.json
  def index
    @adminmatrixnames = Adminmatrixname.all
  end

  # GET /adminmatrixnames/1
  # GET /adminmatrixnames/1.json
  def show
  end

  # GET /adminmatrixnames/new
  def new
    @adminmatrixname = Adminmatrixname.new
  end

  # GET /adminmatrixnames/1/edit
  def edit
  end

  # POST /adminmatrixnames
  # POST /adminmatrixnames.json
  def create
    @adminmatrixname = Adminmatrixname.new(adminmatrixname_params)

    respond_to do |format|
      if @adminmatrixname.save
        format.html { redirect_to @adminmatrixname, notice: 'Adminmatrixname was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminmatrixname }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminmatrixname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminmatrixnames/1
  # PATCH/PUT /adminmatrixnames/1.json
  def update
    respond_to do |format|
      if @adminmatrixname.update(adminmatrixname_params)
        format.html { redirect_to @adminmatrixname, notice: 'Adminmatrixname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminmatrixname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminmatrixnames/1
  # DELETE /adminmatrixnames/1.json
  def destroy
    @adminmatrixname.destroy
    respond_to do |format|
      format.html { redirect_to adminmatrixnames_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminmatrixname
      @adminmatrixname = Adminmatrixname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminmatrixname_params
      params.require(:adminmatrixname).permit(:m_common_name)
    end
end
