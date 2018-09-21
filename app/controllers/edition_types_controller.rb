class EditionTypesController < ApplicationController
  before_action :set_edition_type, only: [:show, :edit, :update, :destroy]

  # GET /edition_types
  # GET /edition_types.json
  def index
    @edition_types = EditionType.all
  end

  # GET /edition_types/1
  # GET /edition_types/1.json
  def show
  end

  # GET /edition_types/new
  def new
    @edition_type = EditionType.new
  end

  # GET /edition_types/1/edit
  def edit
  end

  # POST /edition_types
  # POST /edition_types.json
  def create
    @edition_type = EditionType.new(edition_type_params)

    respond_to do |format|
      if @edition_type.save
        format.html { redirect_to @edition_type, notice: 'Edition type was successfully created.' }
        format.json { render :show, status: :created, location: @edition_type }
      else
        format.html { render :new }
        format.json { render json: @edition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edition_types/1
  # PATCH/PUT /edition_types/1.json
  def update
    respond_to do |format|
      if @edition_type.update(edition_type_params)
        format.html { redirect_to @edition_type, notice: 'Edition type was successfully updated.' }
        format.json { render :show, status: :ok, location: @edition_type }
      else
        format.html { render :edit }
        format.json { render json: @edition_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edition_types/1
  # DELETE /edition_types/1.json
  def destroy
    @edition_type.destroy
    respond_to do |format|
      format.html { redirect_to edition_types_url, notice: 'Edition type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edition_type
      @edition_type = EditionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edition_type_params
      params.require(:edition_type).permit(:name, :code, :about)
    end
end
