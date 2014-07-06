class AdminmatrixstorageformsController < ApplicationController
  before_action :set_adminmatrixstorageform, only: [:show, :edit, :update, :destroy]

  # GET /adminmatrixstorageforms
  # GET /adminmatrixstorageforms.json
  def index
    @adminmatrixstorageforms = Adminmatrixstorageform.all
  end

  # GET /adminmatrixstorageforms/1
  # GET /adminmatrixstorageforms/1.json
  def show
  end

  # GET /adminmatrixstorageforms/new
  def new
    @adminmatrixstorageform = Adminmatrixstorageform.new
  end

  # GET /adminmatrixstorageforms/1/edit
  def edit
  end

  # POST /adminmatrixstorageforms
  # POST /adminmatrixstorageforms.json
  def create
    @adminmatrixstorageform = Adminmatrixstorageform.new(adminmatrixstorageform_params)

    respond_to do |format|
      if @adminmatrixstorageform.save
        format.html { redirect_to @adminmatrixstorageform, notice: 'Adminmatrixstorageform was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adminmatrixstorageform }
      else
        format.html { render action: 'new' }
        format.json { render json: @adminmatrixstorageform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adminmatrixstorageforms/1
  # PATCH/PUT /adminmatrixstorageforms/1.json
  def update
    respond_to do |format|
      if @adminmatrixstorageform.update(adminmatrixstorageform_params)
        format.html { redirect_to @adminmatrixstorageform, notice: 'Adminmatrixstorageform was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adminmatrixstorageform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adminmatrixstorageforms/1
  # DELETE /adminmatrixstorageforms/1.json
  def destroy
    @adminmatrixstorageform.destroy
    respond_to do |format|
      format.html { redirect_to adminmatrixstorageforms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adminmatrixstorageform
      @adminmatrixstorageform = Adminmatrixstorageform.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adminmatrixstorageform_params
      params.require(:adminmatrixstorageform).permit(:storage_form)
    end
end
