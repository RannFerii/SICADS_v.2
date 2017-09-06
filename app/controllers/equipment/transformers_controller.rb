class Equipment::TransformersController < ApplicationController
  before_action :set_transformer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]

    def admin_only
      unless current_user.admin?
       redirect_to   equipment_transformers_path
       flash[:notice] = "Acceso Negado"
      end
    end
  # GET /equipment/transformers
  # GET /equipment/transformers.json
  def index
    @transformers = Transformer.all
  end

  # GET /equipment/transformers/1
  # GET /equipment/transformers/1.json
  def show
  end

  # GET /equipment/transformers/new
  def new
    @transformer = Transformer.new
  end

  # GET /equipment/transformers/1/edit
  def edit
  end

  # POST /equipment/transformers
  # POST /equipment/transformers.json
  def create
    @transformer = Transformer.new(transformer_params)

      if @transformer.save
        redirect_to  ["equipment",@transformer], notice: 'El transformador fue creado con éxito.'
      else
       render :new
      end
  end

  # PATCH/PUT /equipment/transformers/1
  # PATCH/PUT /equipment/transformers/1.json
  def update
    @transformer = Transformer.find(params[:id])

    respond_to do |format|
      if @transformer.update_attributes(transformer_params)
        format.html { redirect_to ["equipment",@transformer], :notice => 'El transformador fue actualizado con éxito' }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
      end
    end

  end

  # DELETE /equipment/transformers/1
  # DELETE /equipment/transformers/1.json
  def destroy
    @transformer.destroy
     redirect_to equipment_transformers_url, notice: 'El transformador fue eliminado con éxito.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transformer
      @transformer = Transformer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transformer_params
      params.require(:transformer).permit(:nomenclatura, :transformador_type, :phase_type, :numero_activo_fijo, :fecha_puesta_servicio, phases_attributes:[:id, :fase, :marca, :num_serie, :fecha_fabricacion, :impedencia_max_hx_capacidad, :impedancia_max_hy_capacidad, :impedancia_max_xy_capacidad, :relacion_transformacion, :capacidad_transformacion,:capacitancia_total, :masa_embarque, :esquema_nucleo, :total_aceite, :sistema_enfriamiento, :mampara,:num_taps, :sistema_contra_incendios, :fosa_captadora_aceite, :tension_sistema, :clase_exactitud, :tipo_expancion_aceite, :tipo_envolvente, :mva, :kv_nom_at, :kv_nom_bt, :kv_nom_terciario,  :fecha_puesta_servicio,:_destroy,windings_attributes: [:id, :_destroy,:devanado_type, :devanado_kv, :porcentaje_z, :z_mva, :z_kv, :conexion_type],tap_changers_attributes: [:id, :_destroy, :marca, :tipo, :serie,:num_pasos], trans_mouthpieces_attributes: [:id, :_destroy, :marca, :tipo, :num_serie, :kv, :amp,  :fecha_fabricacion]])
    end
end
