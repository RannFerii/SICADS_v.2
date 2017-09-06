class Equipment::BladesController < ApplicationController
  before_action :set_blade, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]
      def admin_only
      unless current_user.admin?
       redirect_to   equipment_blades_path
       flash[:notice] = "Acceso Negado"
      end
    end
  # GET /equipment/blades
  # GET /equipment/blades.json
  def index
    @blades = Blade.all
  end

  # GET /equipment/blades/1
  # GET /equipment/blades/1.json
  def show
  end

  # GET /equipment/blades/new
  def new
    @blade = Blade.new
  end

  # GET /equipment/blades/1/edit
  def edit
  end

  # POST /equipment/blades
  # POST /equipment/blades.json
  def create
    @blade = Blade.new(blade_params)

    respond_to do |format|
      if @blade.save
        format.html { redirect_to ['equipment',@blade], notice: 'La cuchilla fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @blade }
      else
        format.html { render :new }
        format.json { render json: @blade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment/blades/1
  # PATCH/PUT /equipment/blades/1.json
  def update
    respond_to do |format|
      if @blade.update(blade_params)
        format.html { redirect_to ['equipment',@blade], notice: 'La cuchilla fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @blade }
      else
        format.html { render :edit }
        format.json { render json: @blade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/blades/1
  # DELETE /equipment/blades/1.json
  def destroy
    @blade.destroy
    respond_to do |format|
      format.html { redirect_to equipment_blades_url, notice: 'La cuchilla fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blade
      @blade = Blade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blade_params
      params.require(:blade).permit(:nomenclatura, :cuchilla_type, :mecanismo_type, :nivel_basico_impulso, :marca, :num_serie, :kv_nom, :amp_nom, :tension_sistema, :fecha_puesta_servicio, :fecha_fabricacion)
    end
end
