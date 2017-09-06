class Equipment::ReactorsController < ApplicationController
  before_action :set_reactor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]
  # GET /equipment/reactors
  # GET /equipment/reactors.json
    def admin_only
      unless current_user.admin?
       redirect_to   equipment_reactors_path
       flash[:notice] = "Acceso Negado"
      end
    end
  def index
    @reactors = Reactor.all
  end

  # GET /equipment/reactors/1
  # GET /equipment/reactors/1.json
  def show
  end

  # GET /equipment/reactors/new
  def new
    @reactor = Reactor.new
  end

  # GET /equipment/reactors/1/edit
  def edit
  end

  # POST /equipment/reactors
  # POST /equipment/reactors.json
  def create
    @reactor = Reactor.new(reactor_params)

    respond_to do |format|
      if @reactor.save
        format.html { redirect_to ['equipment',@reactor], notice: 'Reactor was successfully created.' }
        format.json { render :show, status: :created, location: ['equipment',@reactor] }
      else
        format.html { render :new }
        format.json { render json: @reactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment/reactors/1
  # PATCH/PUT /equipment/reactors/1.json
  def update
    respond_to do |format|
      if @reactor.update(reactor_params)
        format.html { redirect_to ['equipment',@reactor], notice: 'Reactor was successfully updated.' }
        format.json { render :show, status: :ok, location:['equipment',@reactor]}
      else
        format.html { render :edit }
        format.json { render json: @reactor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/reactors/1
  # DELETE /equipment/reactors/1.json
  def destroy
    @reactor.destroy
    respond_to do |format|
      format.html { redirect_to equipment_reactors_url, notice: 'Reactor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reactor
      @reactor = Reactor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reactor_params
      params.require(:reactor).permit(:nomenclatura, :reactor_type, :marca, :num_serie, :mva, :clase_enf, :kv_nom_at, :kv_nom_bt, :kv_nom_terciario, :fecha_fabricacion, :fecha_puesta_servicio, react_mouthpieces_attributes: [:id, :_destroy, :marca, :tipo, :num_serie, :kv, :amp,  :fecha_fabricacion])
    end
end