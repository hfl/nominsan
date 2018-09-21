class DescriptionTypesController < ApplicationController
  before_action :set_description_type, only: [:show, :edit, :update, :destroy]

  # GET /description_types
  # GET /description_types.json
  def index
    @description_types = DescriptionType.all
  end

  # GET /description_types/1
  # GET /description_types/1.json
  def show
  end

  # GET /description_types/new
  def new
    @description_type = DescriptionType.new
  end

  # GET /description_types/1/edit
  def edit
  end

  # POST /description_types
  # POST /description_types.json
  def create
    @description_type = DescriptionType.new(description_type_params)

    respond_to do |format|
      if @description_type.save
        format.html { redirect_to @description_type, notice: 'Description type was successfully created.' }
        format.json { render :show, status: :created, location: @description_type }
      else
        format.html { render :new }
        format.json { render json: @description_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /description_types/1
  # PATCH/PUT /description_types/1.json
  def update
    respond_to do |format|
      if @description_type.update(description_type_params)
        format.html { redirect_to @description_type, notice: 'Description type was successfully updated.' }
        format.json { render :show, status: :ok, location: @description_type }
      else
        format.html { render :edit }
        format.json { render json: @description_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /description_types/1
  # DELETE /description_types/1.json
  def destroy
    @description_type.destroy
    respond_to do |format|
      format.html { redirect_to description_types_url, notice: 'Description type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_description_type
      @description_type = DescriptionType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def description_type_params
      params.require(:description_type).permit(:name, :code, :about)
    end
end
