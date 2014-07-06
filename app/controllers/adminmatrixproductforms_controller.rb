class AdminmatrixproductformsController < ApplicationController
  before_action :set_adminmatrixproductform, only: [:show, :edit, :update, :destroy]

  # GET /adminmatrixproductforms
  # GET /adminmatrixproductforms.json
  def index
    @adminmatrixproductforms = Adminmatrixproductform.all
  end

  # GET /adminmatrixproductforms/1
  # GET /adminmatrixproductforms/1.json
  def show
  end

  # GET /adminmatrixproductforms/new
  def new
    @adminmatrixproductform = Adminmatrixproductform.new
  end

  # GET /adminmatrixproductforms/1/edit
  def edit
  end

  # POST /adminmatrixproductforms
  # POST /adminmatrixproductforms.json
  def create
    @adminmatrixproductform = Adminmatrixproductform.new(adminmatrixproductform_params)

    respond_to do |format|
      if @adminmatrixproductform.save
        format.html { redirect_to @adminmatrixproductform, notice: 'Adminmatrixproductform was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminmatrixproductform }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminmatrixproductform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminmatrixproductforms/1
  # PATCH/PUT /adminmatrixproductforms/1.json
  def update
    respond_to do |format|
      if @adminmatrixproductform.update(adminmatrixproductform_params)
        format.html { redirect_to @adminmatrixproductform, notice: 'Adminmatrixproductform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminmatrixproductform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminmatrixproductforms/1
  # DELETE /adminmatrixproductforms/1.json
  def destroy
    @adminmatrixproductform.destroy
    respond_to do |format|
      format.html { redirect_to adminmatrixproductforms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminmatrixproductform
      @adminmatrixproductform = Adminmatrixproductform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminmatrixproductform_params
      params.require(:adminmatrixproductform).permit(:product_form)
    end
end
