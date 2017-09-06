class Equipment::BatteryBanksController < ApplicationController
  before_action :set_battery_bank, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]
    def admin_only
      unless current_user.admin?
       redirect_to   equipment_battery_banks_path
       flash[:notice] = "Acceso Negado"
      end
    end

  # GET /equipment/battery_banks
  # GET /equipment/battery_banks.json
  def index
    @battery_banks = BatteryBank.all
  end

  # GET /equipment/battery_banks/1
  # GET /equipment/battery_banks/1.json
  def show
  end

  # GET /equipment/battery_banks/new
  def new
    @battery_bank =BatteryBank.new
  end

  # GET /equipment/battery_banks/1/edit
  def edit
  end

  # POST /equipment/battery_banks
  # POST /equipment/battery_banks.json
  def create
    @battery_bank = BatteryBank.new(battery_bank_params)

    respond_to do |format|
      if @battery_bank.save
        format.html { redirect_to ['equipment',@battery_bank], notice: 'El banco de baterías fue creado exitosamente' }
        format.json { render :show, status: :created, location: @battery_bank }
      else
        format.html { render :new }
        format.json { render json: @battery_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment/battery_banks/1
  # PATCH/PUT /equipment/battery_banks/1.json
  def update
    respond_to do |format|
      if @battery_bank.update(battery_bank_params)
        format.html { redirect_to ['equipment',@battery_bank], notice: 'El banco de baterías fue actualizado exitosamente.' }
        format.json { render :show, status: :ok, location: @battery_bank }
      else
        format.html { render :edit }
        format.json { render json: @battery_bank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/battery_banks/1
  # DELETE /equipment/battery_banks/1.json
  def destroy
    @battery_bank.destroy
    respond_to do |format|
      format.html { redirect_to equipment_battery_banks_url, notice: 'El banco de baterías fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battery_bank
      @battery_bank = BatteryBank.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def battery_bank_params
      params.require(:battery_bank).permit(:nomenclatura, :marca, :banco_baterias_type, :num_celdas, :capacidad_ah, :volts_totales, :fecha_puesta_servicio)
    end
end
