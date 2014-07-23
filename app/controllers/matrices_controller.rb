class MatricesController < ApplicationController
  before_action :set_matrix, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /matrices
  # GET /matrices.json
  def index
    @matrices = Matrix.all
  end

  # GET /matrices/1
  # GET /matrices/1.json
  def show
  end

  # GET /matrices/new
  def new
    @matrix = Matrix.new
  end

  # GET /matrices/1/edit
  def edit
  end

  # POST /matrices
  # POST /matrices.json
  def create
    @matrix = Matrix.new(matrix_params)

    respond_to do |format|
      if @matrix.save
        format.html { redirect_to @matrix, notice: 'Matrix was successfully created.' }
        format.json { render action: 'show', status: :created, location: @matrix }
      else
        format.html { render action: 'new' }
        format.json { render json: @matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /matrices/1
  # PATCH/PUT /matrices/1.json
  def update
    respond_to do |format|
      if @matrix.update(matrix_params)
        format.html { redirect_to @matrix, notice: 'Matrix was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @matrix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /matrices/1
  # DELETE /matrices/1.json
  def destroy
    @matrix.destroy
    respond_to do |format|
      format.html { redirect_to matrices_url, notice: 'Matrix was successfully deleted.'  }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matrix
      @matrix = Matrix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matrix_params
      params.require(:matrix).permit(:adminmatrixname_id, :adminmatrixgenu_id, :adminmatrixspec_id, :other_matrix_name, :adminmatrixplantpart_id, :adminmatrixstorageform_id, :adminmatrixproductform_id, :place_of_origin, :date_of_harvest, :relative_humidity_during_harvest, :temperature_during_harvest, :pre_treatment, :sampling_date, :m_ph, :m_aw, :humidity_of_matrix, :ash, :sand, :lipids, :further_ingredients, :m_comment, :reference_id, :user_id)
    end
end
