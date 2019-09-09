class InasistenciaController < ApplicationController
  before_action :set_inasistencium, only: [:show, :edit, :update, :destroy]

  # GET /inasistencia
  # GET /inasistencia.json
  def index
    @inasistencia = Inasistencium.all
  end

  # GET /inasistencia/1
  # GET /inasistencia/1.json
  def show
  end

  # GET /inasistencia/new
  def new
    @inasistencium = Inasistencium.new
  end

  # GET /inasistencia/1/edit
  def edit
  end

  # POST /inasistencia
  # POST /inasistencia.json
  def create
    @inasistencium = Inasistencium.new(inasistencium_params)

    respond_to do |format|
      if @inasistencium.save
        format.html { redirect_to @inasistencium, notice: 'Inasistencium was successfully created.' }
        format.json { render :show, status: :created, location: @inasistencium }
      else
        format.html { render :new }
        format.json { render json: @inasistencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inasistencia/1
  # PATCH/PUT /inasistencia/1.json
  def update
    respond_to do |format|
      if @inasistencium.update(inasistencium_params)
        format.html { redirect_to @inasistencium, notice: 'Inasistencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @inasistencium }
      else
        format.html { render :edit }
        format.json { render json: @inasistencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inasistencia/1
  # DELETE /inasistencia/1.json
  def destroy
    @inasistencium.destroy
    respond_to do |format|
      format.html { redirect_to inasistencia_url, notice: 'Inasistencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inasistencium
      @inasistencium = Inasistencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inasistencium_params
      params.require(:inasistencium).permit(:personal_id, :fechadesde, :fechahasta, :causa, :aviso)
    end
end
