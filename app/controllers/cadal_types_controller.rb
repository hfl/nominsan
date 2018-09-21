class CadalTypesController < ApplicationController
  before_action :set_cadal_type, only: [:show, :edit, :update, :destroy]

  # GET /cadal_types
  # GET /cadal_types.json
  def index
    @cadal_types = CadalType.all
  end

  # GET /cadal_types/1
  # GET /cadal_types/1.json
  def show
  end

  # GET /cadal_types/new
  def new
    @cadal_type = CadalType.new
  end

  # GET /cadal_types/1/edit
  def edit
  end

  # POST /cadal_types
  # POST /cadal_types.json
  def create
    @cadal_type = CadalType.new(cadal_type_params)

    respond_to do |format|
      if @cadal_type.save
        format.html { redirect_to @cadal_type, notice: 'Cadal type was successfully created.' }
        format.json { render :show, status: :created, location: @cadal_type }
      else
        format.html { render :new }
        format.json { render json: @cadal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadal_types/1
  # PATCH/PUT /cadal_types/1.json
  def update
    respond_to do |format|
      if @cadal_type.update(cadal_type_params)
        format.html { redirect_to @cadal_type, notice: 'Cadal type was successfully updated.' }
        format.json { render :show, status: :ok, location: @cadal_type }
      else
        format.html { render :edit }
        format.json { render json: @cadal_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadal_types/1
  # DELETE /cadal_types/1.json
  def destroy
    @cadal_type.destroy
    respond_to do |format|
      format.html { redirect_to cadal_types_url, notice: 'Cadal type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadal_type
      @cadal_type = CadalType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cadal_type_params
      params.require(:cadal_type).permit(:name, :code, :about)
    end
end
