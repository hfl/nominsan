class CoverageTypesController < ApplicationController
  before_action :set_coverage_type, only: [:show, :edit, :update, :destroy]

  # GET /coverage_types
  # GET /coverage_types.json
  def index
    @coverage_types = CoverageType.all
  end

  # GET /coverage_types/1
  # GET /coverage_types/1.json
  def show
  end

  # GET /coverage_types/new
  def new
    @coverage_type = CoverageType.new
  end

  # GET /coverage_types/1/edit
  def edit
  end

  # POST /coverage_types
  # POST /coverage_types.json
  def create
    @coverage_type = CoverageType.new(coverage_type_params)

    respond_to do |format|
      if @coverage_type.save
        format.html { redirect_to @coverage_type, notice: 'Coverage type was successfully created.' }
        format.json { render :show, status: :created, location: @coverage_type }
      else
        format.html { render :new }
        format.json { render json: @coverage_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coverage_types/1
  # PATCH/PUT /coverage_types/1.json
  def update
    respond_to do |format|
      if @coverage_type.update(coverage_type_params)
        format.html { redirect_to @coverage_type, notice: 'Coverage type was successfully updated.' }
        format.json { render :show, status: :ok, location: @coverage_type }
      else
        format.html { render :edit }
        format.json { render json: @coverage_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coverage_types/1
  # DELETE /coverage_types/1.json
  def destroy
    @coverage_type.destroy
    respond_to do |format|
      format.html { redirect_to coverage_types_url, notice: 'Coverage type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coverage_type
      @coverage_type = CoverageType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coverage_type_params
      params.require(:coverage_type).permit(:name, :code, :about)
    end
end
