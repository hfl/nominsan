class MarcTypesController < ApplicationController
  before_action :set_marc_type, only: [:show, :edit, :update, :destroy]

  # GET /marc_types
  # GET /marc_types.json
  def index
    @marc_types = MarcType.all
  end

  # GET /marc_types/1
  # GET /marc_types/1.json
  def show
  end

  # GET /marc_types/new
  def new
    @marc_type = MarcType.new
  end

  # GET /marc_types/1/edit
  def edit
  end

  # POST /marc_types
  # POST /marc_types.json
  def create
    @marc_type = MarcType.new(marc_type_params)

    respond_to do |format|
      if @marc_type.save
        format.html { redirect_to @marc_type, notice: 'Marc type was successfully created.' }
        format.json { render :show, status: :created, location: @marc_type }
      else
        format.html { render :new }
        format.json { render json: @marc_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marc_types/1
  # PATCH/PUT /marc_types/1.json
  def update
    respond_to do |format|
      if @marc_type.update(marc_type_params)
        format.html { redirect_to @marc_type, notice: 'Marc type was successfully updated.' }
        format.json { render :show, status: :ok, location: @marc_type }
      else
        format.html { render :edit }
        format.json { render json: @marc_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marc_types/1
  # DELETE /marc_types/1.json
  def destroy
    @marc_type.destroy
    respond_to do |format|
      format.html { redirect_to marc_types_url, notice: 'Marc type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marc_type
      @marc_type = MarcType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marc_type_params
      params.require(:marc_type).permit(:name, :code, :about)
    end
end
