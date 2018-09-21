class TempusController < ApplicationController
  before_action :set_tempu, only: [:show, :edit, :update, :destroy]

  # GET /tempus
  # GET /tempus.json
  def index
    @tempus = Tempu.all
  end

  # GET /tempus/1
  # GET /tempus/1.json
  def show
  end

  # GET /tempus/new
  def new
    @tempu = Tempu.new
  end

  # GET /tempus/1/edit
  def edit
  end

  # POST /tempus
  # POST /tempus.json
  def create
    @tempu = Tempu.new(tempu_params)

    respond_to do |format|
      if @tempu.save
        format.html { redirect_to @tempu, notice: 'Tempu was successfully created.' }
        format.json { render :show, status: :created, location: @tempu }
      else
        format.html { render :new }
        format.json { render json: @tempu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tempus/1
  # PATCH/PUT /tempus/1.json
  def update
    respond_to do |format|
      if @tempu.update(tempu_params)
        format.html { redirect_to @tempu, notice: 'Tempu was successfully updated.' }
        format.json { render :show, status: :ok, location: @tempu }
      else
        format.html { render :edit }
        format.json { render json: @tempu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tempus/1
  # DELETE /tempus/1.json
  def destroy
    @tempu.destroy
    respond_to do |format|
      format.html { redirect_to tempus_url, notice: 'Tempu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tempu
      @tempu = Tempu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tempu_params
      params.require(:tempu).permit(:literature_id, :date_type_id, :date_xsis_id, :date, :note)
    end
end
