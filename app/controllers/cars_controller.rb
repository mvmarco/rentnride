class CarsController < ApplicationController

  def new
    @car = Car.new # car form instantiation
  end
  
  def show
    @car = Car.find(params[:id])
  end
  
  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.save

    redirect_to car_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:model, :pickup_address, :price, :description)
  end

end
