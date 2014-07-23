class AdminagentnamesController < ApplicationController
  before_action :set_adminagentname, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /adminagentnames
  # GET /adminagentnames.json
  def index
    @adminagentnames = Adminagentname.all
  end

  # GET /adminagentnames/1
  # GET /adminagentnames/1.json
  def show
  end

  # GET /adminagentnames/new
  def new
    @adminagentname = Adminagentname.new
  end

  # GET /adminagentnames/1/edit
  def edit
  end

  # POST /adminagentnames
  # POST /adminagentnames.json
  def create
    @adminagentname = Adminagentname.new(adminagentname_params)

    respond_to do |format|
      if @adminagentname.save
        format.html { redirect_to @adminagentname, notice: 'Adminagentname was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminagentname }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminagentname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminagentnames/1
  # PATCH/PUT /adminagentnames/1.json
  def update
    respond_to do |format|
      if @adminagentname.update(adminagentname_params)
        format.html { redirect_to @adminagentname, notice: 'Adminagentname was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminagentname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminagentnames/1
  # DELETE /adminagentnames/1.json
  def destroy
    @adminagentname.destroy
    respond_to do |format|
      format.html { redirect_to adminagentnames_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminagentname
      @adminagentname = Adminagentname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminagentname_params
      params.require(:adminagentname).permit(:a_common_name)
    end
end
