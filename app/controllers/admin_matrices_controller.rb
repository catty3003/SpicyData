class AdminMatricesController < ApplicationController
  before_action :set_admin_matrix, only: [:show, :edit, :update, :destroy]

  # GET /admin_matrices
  # GET /admin_matrices.json
  def index
    @admin_matrices = AdminMatrix.all
  end

  # GET /admin_matrices/1
  # GET /admin_matrices/1.json
  def show
  end

  # GET /admin_matrices/new
  def new
    @admin_matrix = AdminMatrix.new
  end

  # GET /admin_matrices/1/edit
  def edit
  end

  # POST /admin_matrices
  # POST /admin_matrices.json
  def create
    @admin_matrix = AdminMatrix.new(admin_matrix_params)

    respond_to do |format|
      if @admin_matrix.save
        format.html { redirect_to @admin_matrix, notice: 'Admin matrix was successfully created.' }
        format.json { render action: 'show', status: :created, location: @admin_matrix }
      else
        format.html { render action: 'new' }
        format.json { render json: @admin_matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin_matrices/1
  # PATCH/PUT /admin_matrices/1.json
  def update
    respond_to do |format|
      if @admin_matrix.update(admin_matrix_params)
        format.html { redirect_to @admin_matrix, notice: 'Admin matrix was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @admin_matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_matrices/1
  # DELETE /admin_matrices/1.json
  def destroy
    @admin_matrix.destroy
    respond_to do |format|
      format.html { redirect_to admin_matrices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_matrix
      @admin_matrix = AdminMatrix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_matrix_params
      params.require(:admin_matrix).permit(:name)
    end
end
