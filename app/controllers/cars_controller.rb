class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show] 

  def new
    @car = Car.new # car form instantiation
  end
  
  def show
    @car = Car.find(params[:id])
  end
  
  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to car_path(@car)
    else
      render "new"
    end
  end

  private

  def car_params
    params.require(:car).permit(:model, :pickup_address, :price, :description, :photo)
  end

end
