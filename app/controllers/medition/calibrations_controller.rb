class Medition::CalibrationsController < ApplicationController
  before_action :set_calibration, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]

    def admin_only
      unless current_user.admin?
       redirect_to   equipment_calibrations_path
       flash[:notice] = "Acceso Negado"
      end
    end
  # GET /medition/calibrations
  # GET /medition/calibrations.json
  def index
    @calibrations = Calibration.all
  end

  # GET /medition/calibrations/1
  # GET /medition/calibrations/1.json
  def show
  end

  # GET /medition/calibrations/new
  def new
    @calibration = Calibration.new
  end

  # GET /medition/calibrations/1/edit
  def edit
  end

  # POST /medition/calibrations
  # POST /medition/calibrations.json
  def create
    @calibration = Calibration.new(calibration_params)

    respond_to do |format|
      if @calibration.save
        format.html { redirect_to ['medition',@calibration], notice: 'La calibración fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @calibration }
      else
        format.html { render :new }
        format.json { render json: @calibration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medition/calibrations/1
  # PATCH/PUT /medition/calibrations/1.json
  def update
    respond_to do |format|
      if @calibration.update(calibration_params)
        format.html { redirect_to ['medition',@calibration], notice: 'La calibración fue creada exitosamente.' }
        format.json { render :show, status: :ok, location: @calibration }
      else
        format.html { render :edit }
        format.json { render json: @calibration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medition/calibrations/1
  # DELETE /medition/calibrations/1.json
  def destroy
    @medition_calibration.destroy
    respond_to do |format|
      format.html { redirect_to medition_calibrations_url, notice: 'La calibración fue eliminada exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calibration
      @calibration = Calibration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calibration_params
      params.require(:calibration).permit(:fecha_calibracion, :fecha_vencimiento, :measurement_equipment_id)
    end
end
