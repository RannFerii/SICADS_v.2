class Control::SubstationsController < ApplicationController
  before_action :set_substation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :admin_only, :except => [:show,:index]

    def admin_only
      unless current_user.admin?
       redirect_to   control_substations_path
       flash[:notice] = "Acceso Negado"
      end
    end

  # GET /control/substations
  # GET /control/substations.json
  def index
    @substations = Substation.all
  end

  # GET /control/substations/1
  # GET /control/substations/1.json
  def show
  end

  # GET /control/substations/new
  def new
    @substation = Substation.new
  end

  # GET /control/substations/1/edit
  def edit
  end

  # POST /control/substations
  # POST /control/substations.json
  def create
    @substation = Substation.new(substation_params)

    respond_to do |format|
      if @substation.save
        format.html { redirect_to ['control',@substation], notice: 'La subestación fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @substation }
      else
        format.html { render :new }
        format.json { render json: @substation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /control/substations/1
  # PATCH/PUT /control/substations/1.json
  def update
    respond_to do |format|
      if @substation.update(substation_params)
        format.html { redirect_to ['control',@substation], notice: 'La subestación fue creada exitosamente.' }
        format.json { render :show, status: :ok, location: @substation }
      else
        format.html { render :edit }
        format.json { render json: @substation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /control/substations/1
  # DELETE /control/substations/1.json
  def destroy
    @substation.destroy
    respond_to do |format|
      format.html { redirect_to control_substations_url, notice: 'La subestación fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_substation
      @substation = Substation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def substation_params
      params.require(:substation).permit(:nombre_subestacion, :subestacion_abbr, :direccion, :latitude, :longitude, :extencion, :encargado_nombre, :encargado_apellidos, :capacidad, :fecha_puesta_servicio)
    end
end

