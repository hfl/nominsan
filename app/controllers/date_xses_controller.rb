class DateXsesController < ApplicationController
  before_action :set_date_xse, only: [:show, :edit, :update, :destroy]

  # GET /date_xses
  # GET /date_xses.json
  def index
    @date_xses = DateXsis.all
  end

  # GET /date_xses/1
  # GET /date_xses/1.json
  def show
  end

  # GET /date_xses/new
  def new
    @date_xse = DateXsis.new
  end

  # GET /date_xses/1/edit
  def edit
  end

  # POST /date_xses
  # POST /date_xses.json
  def create
    @date_xse = DateXsis.new(date_xse_params)

    respond_to do |format|
      if @date_xse.save
        format.html { redirect_to @date_xse, notice: 'Date xsis was successfully created.' }
        format.json { render :show, status: :created, location: @date_xse }
      else
        format.html { render :new }
        format.json { render json: @date_xse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_xses/1
  # PATCH/PUT /date_xses/1.json
  def update
    respond_to do |format|
      if @date_xse.update(date_xse_params)
        format.html { redirect_to @date_xse, notice: 'Date xsis was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_xse }
      else
        format.html { render :edit }
        format.json { render json: @date_xse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_xses/1
  # DELETE /date_xses/1.json
  def destroy
    @date_xse.destroy
    respond_to do |format|
      format.html { redirect_to date_xses_url, notice: 'Date xsis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_xse
      @date_xse = DateXsis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_xse_params
      params.require(:date_xse).permit(:name, :code, :ref, :about)
    end
end
