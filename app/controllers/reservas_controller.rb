class ReservasController < ApplicationController
    before_action :set_reserva, only: [:show, :destroy ]
  
  def index
    @reservas = Reserva.all
  end

  def show
    @reserva = Reserva.find(params[:id])
  end

  def new
    @reserva = Reserva.new(reserva_params)
  end
  
  def create
  end
  
  def cupoClase
    @reserva = Reserva.new(
      :usuario_id => current_usuario.id,
      :clase_id => params[:id].to_i,
      :fecha => params[:fecha])
  
    respond_to do |format|
    if @reserva.save
      format.html { redirect_to @reserva, notice: 'Clase reservada' }
      format.json { render action: 'index', status: :created, location: @reserva }
    else
      format.html { render action: 'index' }
      format.json { render json: @reserva.errors, status: :unprocessable_entity }
    end
  end
  end

  def destroy
    @reserva = Reserva.find(params[:id])
    @reserva.destroy
    redirect_to reservas_path
  end

  private
  def reserva_params
    params.require(:reserva).permit(:usuario_id, :clase_id, :fecha)
  end

  def set_reserva
    @reserva = Reserva.find(params[:id])
  end
end
