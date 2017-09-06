class Equipment::LightningArrestersController < ApplicationController
  before_action :set_lightning_arrester, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]
  # GET /equipment/lightning_arresters
  # GET /equipment/lightning_arresters.json
    def admin_only
      unless current_user.admin?
       redirect_to   equipment_lightning_arresters_path
       flash[:notice] = "Acceso Negado"
      end
    end
  def index
    @lightning_arresters = LightningArrester.all
  end

  # GET /equipment/lightning_arresters/1
  # GET /equipment/lightning_arresters/1.json
  def show
  end

  # GET /equipment/lightning_arresters/new
  def new
    @lightning_arrester = LightningArrester.new
  end

  # GET /equipment/lightning_arresters/1/edit
  def edit
  end

  # POST /equipment/lightning_arresters
  # POST /equipment/lightning_arresters.json
  def create
    @lightning_arrester = LightningArrester.new(lightning_arrester_params)

    respond_to do |format|
      if @lightning_arrester.save
        format.html { redirect_to ['equipment',@lightning_arrester], notice: 'El apartarrayosfue creado exitosamente' }
        format.json { render :show, status: :created, location: @lightning_arrester }
      else
        format.html { render :new }
        format.json { render json: @lightning_arrester.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment/lightning_arresters/1
  # PATCH/PUT /equipment/lightning_arresters/1.json
  def update
    respond_to do |format|
      if @lightning_arrester.update(lightning_arrester_params)
        format.html { redirect_to ['equipment',@lightning_arrester], notice: 'El apartarrayos fue creado exitosamente' }
        format.json { render :show, status: :ok, location: @lightning_arrester }
      else
        format.html { render :edit }
        format.json { render json: @lightning_arrester.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/lightning_arresters/1
  # DELETE /equipment/lightning_arresters/1.json
  def destroy
    @lightning_arrester.destroy
    respond_to do |format|
      format.html { redirect_to equipment_lightning_arresters_url, notice: 'El apartarrayos fue eliminado exitosamente' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lightning_arrester
      @lightning_arrester = LightningArrester.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lightning_arrester_params
      params.require(:lightning_arrester).permit(:nomenclatura, :num_secciones, :apartarrayos_type, :descarga_ka, :kv_sist, :marca, :num_serie, :fecha_fabricacion, :fecha_puesta_servicio)
    end
end
