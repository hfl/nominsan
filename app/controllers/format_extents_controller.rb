class FormatExtentsController < ApplicationController
  before_action :set_format_extent, only: [:show, :edit, :update, :destroy]

  # GET /format_extents
  # GET /format_extents.json
  def index
    @format_extents = FormatExtent.all
  end

  # GET /format_extents/1
  # GET /format_extents/1.json
  def show
  end

  # GET /format_extents/new
  def new
    @format_extent = FormatExtent.new
  end

  # GET /format_extents/1/edit
  def edit
  end

  # POST /format_extents
  # POST /format_extents.json
  def create
    @format_extent = FormatExtent.new(format_extent_params)

    respond_to do |format|
      if @format_extent.save
        format.html { redirect_to @format_extent, notice: 'Format extent was successfully created.' }
        format.json { render :show, status: :created, location: @format_extent }
      else
        format.html { render :new }
        format.json { render json: @format_extent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /format_extents/1
  # PATCH/PUT /format_extents/1.json
  def update
    respond_to do |format|
      if @format_extent.update(format_extent_params)
        format.html { redirect_to @format_extent, notice: 'Format extent was successfully updated.' }
        format.json { render :show, status: :ok, location: @format_extent }
      else
        format.html { render :edit }
        format.json { render json: @format_extent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /format_extents/1
  # DELETE /format_extents/1.json
  def destroy
    @format_extent.destroy
    respond_to do |format|
      format.html { redirect_to format_extents_url, notice: 'Format extent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_format_extent
      @format_extent = FormatExtent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def format_extent_params
      params.require(:format_extent).permit(:name, :code, :about)
    end
end
