class Equipment::SwitchesController < ApplicationController
  before_action :set_switch, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]
    def admin_only
      unless current_user.admin?
       redirect_to   equipment_switches_path
       flash[:notice] = "Acceso Negado"
      end
    end
  # GET /equipment/switches
  # GET /equipment/switches.json
  def index
    @switches = Switch.all
  end

  # GET /equipment/switches/1
  # GET /equipment/switches/1.json
  def show
  end

  # GET /equipment/switches/new
  def new
    @switch = Switch.new
  end

  # GET /equipment/switches/1/edit
  def edit
  end

  # POST /equipment/switches
  # POST /equipment/switches.json
  def create
    @switch = Switch.new(switch_params)

    respond_to do |format|
      if @switch.save
        format.html { redirect_to ['equipment',@switch], notice: 'El interruptor fue creado exitosamente.' }
        format.json { render :show, status: :created, location: @switch }
      else
        format.html { render :new }
        format.json { render json: @switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment/switches/1
  # PATCH/PUT /equipment/switches/1.json
  def update
    respond_to do |format|
      if @switch.update(switch_params)
        format.html { redirect_to ['equipment',@switch], notice: 'El switch fue actualizado exitosamente' }
        format.json { render :show, status: :ok, location: @switch }
      else
        format.html { render :edit }
        format.json { render json: @switch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/switches/1
  # DELETE /equipment/switches/1.json
  def destroy
    @switch.destroy
    respond_to do |format|
      format.html { redirect_to equipment_switches_url, notice: 'El switch fue eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_switch
      @switch = Switch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def switch_params
      params.require(:switch).permit(:nomenclatura, :interruptor_type, :mecanismo_type, :marca, :voltaje_control, :tension_fuerza, :tension_sistema, :num_serie, :kv_nom, :amp_nom, :capacidad_interruptiva, :nivel_basico_impulso, :medio_ext, :fecha_fabricacion, :fecha_puesta_servicio)
    end
end
