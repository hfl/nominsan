class MarcsController < ApplicationController
  before_action :set_marc, only: [:show, :edit, :update, :destroy]

  # GET /marcs
  # GET /marcs.json
  def index
    @marcs = Marc.all
  end

  # GET /marcs/1
  # GET /marcs/1.json
  def show
  end

  # GET /marcs/new
  def new
    @marc = Marc.new
  end

  # GET /marcs/1/edit
  def edit
  end

  # POST /marcs
  # POST /marcs.json
  def create
    @marc = Marc.new(marc_params)

    respond_to do |format|
      if @marc.save
        format.html { redirect_to @marc, notice: 'Marc was successfully created.' }
        format.json { render :show, status: :created, location: @marc }
      else
        format.html { render :new }
        format.json { render json: @marc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcs/1
  # PATCH/PUT /marcs/1.json
  def update
    respond_to do |format|
      if @marc.update(marc_params)
        format.html { redirect_to @marc, notice: 'Marc was successfully updated.' }
        format.json { render :show, status: :ok, location: @marc }
      else
        format.html { render :edit }
        format.json { render json: @marc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcs/1
  # DELETE /marcs/1.json
  def destroy
    @marc.destroy
    respond_to do |format|
      format.html { redirect_to marcs_url, notice: 'Marc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marc
      @marc = Marc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marc_params
      params.require(:marc).permit(:literature_id, :marc_type_id, :marc)
    end
end
