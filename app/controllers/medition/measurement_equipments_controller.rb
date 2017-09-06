class Medition::MeasurementEquipmentsController < ApplicationController
  before_action :set_measurement_equipment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]
    before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]
    def admin_only
      unless current_user.admin?
       redirect_to   equipment_measurement_equipments_path
       flash[:notice] = "Acceso Negado"
      end
    end
  # GET /medition/measurement_equipments
  # GET /medition/measurement_equipments.json
  def index
    @measurement_equipments = MeasurementEquipment.all
  end

  # GET /medition/measurement_equipments/1
  # GET /medition/measurement_equipments/1.json
  def show
  end

  # GET /medition/measurement_equipments/new
  def new
    @measurement_equipment =MeasurementEquipment.new
  end

  # GET /medition/measurement_equipments/1/edit
  def edit
  end

  # POST /medition/measurement_equipments
  # POST /medition/measurement_equipments.json
  def create
    @measurement_equipment = MeasurementEquipment.new(measurement_equipment_params)

    respond_to do |format|
      if @measurement_equipment.save
        format.html { redirect_to ['medition',@measurement_equipment], notice: 'El equipo de medición fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @measurement_equipment }
      else
        format.html { render :new }
        format.json { render json: @measurement_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medition/measurement_equipments/1
  # PATCH/PUT /medition/measurement_equipments/1.json
  def update
    respond_to do |format|
      if @measurement_equipment.update(measurement_equipment_params)
        format.html { redirect_to ['medition',@measurement_equipment], notice: 'El equipo de medición fue actualizado exitosamente..' }
        format.json { render :show, status: :ok, location: @measurement_equipment }
      else
        format.html { render :edit }
        format.json { render json: @measurement_equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medition/measurement_equipments/1
  # DELETE /medition/measurement_equipments/1.json
  def destroy
    @measurement_equipment.destroy
    respond_to do |format|
      format.html { redirect_to medition_measurement_equipments_url, notice: 'El equipo de medición fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_measurement_equipment
      @measurement_equipment = MeasurementEquipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def measurement_equipment_params
      params.require(:measurement_equipment).permit(:equipo_medicion_type, :modelo, :marca, :num_serie, :num_inv_eimp)
    end
end
