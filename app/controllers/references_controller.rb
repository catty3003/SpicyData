class ReferencesController < ApplicationController
  before_action :set_reference, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, :except => [:some_action_without_auth]
  # GET /references
  # GET /references.json
  def index
    #@references = Reference.all

    @search = Reference.search(params[:q])
    @references = @search.result
    @search.build_condition 

    respond_to do |format|
      format.html
      format.csv { send_data @references.to_csv }
      format.xls
    end    
  end

  # GET /references/1
  # GET /references/1.json
  def show
    if params[:clone]
      @reference = @reference.dupli


      respond_to do |format|
        format.html { render action: "new", notice: 'reference was successfully cloned.' }
      end
      else
    end
  end

  # GET /references/new
  def new
    @reference = Reference.new
  end

  # GET /references/1/edit
  def edit
  end

  # POST /references
  # POST /references.json
  def create
    @reference = current_user.references.new(reference_params)

    respond_to do |format|
      if @reference.save
        format.html { redirect_to @reference, notice: 'Reference was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reference }
      else
        format.html { render action: 'new' }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /references/1
  # PATCH/PUT /references/1.json
  def update
    respond_to do |format|
      if @reference.update(reference_params)
        format.html { redirect_to @reference, notice: 'Reference was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /references/1
  # DELETE /references/1.json
  def destroy
    @reference.destroy
    respond_to do |format|
      format.html { redirect_to references_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference
      @reference = Reference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_params
      params.require(:reference).permit(:adminreferencetype_id, :first_author_name, :year, :title, :journal, :volume, :page_from, :page_to, :link, :matrix, :agent, :spiking, :treatment, :sample_prep, :detection, :tenacity, :r_comment, :user_id)
    end
end
