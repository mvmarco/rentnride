class ReservationsController < ApplicationController
  def create
    reservation = Reservation.new(reservation_params)
    reservation.user = current_user
    reservation.car_id = params[:car_id]
    reservation.status = 'Approved'
    days = (reservation.end_date - reservation.start_date).to_i
    reservation.total_price = days*reservation.car.price
    reservation.save

    redirect_to reservation_path(reservation)
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
