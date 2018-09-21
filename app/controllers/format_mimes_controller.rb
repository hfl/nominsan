class FormatMimesController < ApplicationController
  before_action :set_format_mime, only: [:show, :edit, :update, :destroy]

  # GET /format_mimes
  # GET /format_mimes.json
  def index
    @format_mimes = FormatMime.all
  end

  # GET /format_mimes/1
  # GET /format_mimes/1.json
  def show
  end

  # GET /format_mimes/new
  def new
    @format_mime = FormatMime.new
  end

  # GET /format_mimes/1/edit
  def edit
  end

  # POST /format_mimes
  # POST /format_mimes.json
  def create
    @format_mime = FormatMime.new(format_mime_params)

    respond_to do |format|
      if @format_mime.save
        format.html { redirect_to @format_mime, notice: 'Format mime was successfully created.' }
        format.json { render :show, status: :created, location: @format_mime }
      else
        format.html { render :new }
        format.json { render json: @format_mime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /format_mimes/1
  # PATCH/PUT /format_mimes/1.json
  def update
    respond_to do |format|
      if @format_mime.update(format_mime_params)
        format.html { redirect_to @format_mime, notice: 'Format mime was successfully updated.' }
        format.json { render :show, status: :ok, location: @format_mime }
      else
        format.html { render :edit }
        format.json { render json: @format_mime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /format_mimes/1
  # DELETE /format_mimes/1.json
  def destroy
    @format_mime.destroy
    respond_to do |format|
      format.html { redirect_to format_mimes_url, notice: 'Format mime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_format_mime
      @format_mime = FormatMime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def format_mime_params
      params.require(:format_mime).permit(:name, :code, :about)
    end
end
