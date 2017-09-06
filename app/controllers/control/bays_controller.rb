class Control::BaysController < ApplicationController
  before_action :set_bay, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :admin_only, :except => [:show,:index]

    def admin_only
      unless current_user.admin?
       redirect_to   control_bays_path
       flash[:notice] = "Acceso Negado"
      end
    end

  # GET /control/bays
  # GET /control/bays.json
  def index
    @bays =Bay.all
  end

  # GET /control/bays/1
  # GET /control/bays/1.json
  def show
  end

  # GET /control/bays/new
  def new
    @bay =Bay.new
  end

  # GET /control/bays/1/edit
  def edit
  end

  # POST /control/bays
  # POST /control/bays.json
  def create
    @bay =Bay.new(bay_params)

    respond_to do |format|
      if @bay.save
        format.html { redirect_to ['control',@bay], notice: 'La bahía fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @bay }
      else
        format.html { render :new }
        format.json { render json: @bay.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /control/bays/1
  # PATCH/PUT /control/bays/1.json
  def update
    respond_to do |format|
      if @bay.update(bay_params)
        format.html { redirect_to ['control',@bay], notice: 'La bahía fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @bay }
      else
        format.html { render :edit }
        format.json { render json: @bay.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /control/bays/1
  # DELETE /control/bays/1.json
  def destroy
    @bay.destroy
    respond_to do |format|
      format.html { redirect_to bays_url, notice: 'La bahía fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bay
      @bay = Bay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bay_params
      params.require(:bay).permit(:nomenclatura, :battery_bank_id, :lightning_arrester_id, :reactor_id, :substation_id, :switch_id,  :transformer_id,  blade_ids: [])
    end
end
