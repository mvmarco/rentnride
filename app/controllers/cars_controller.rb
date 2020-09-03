class CarsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new # car form instantiation
  end

  def show
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)
    #@car = Car.new(params[:car])
    @car.user = current_user
    @car.save!

    redirect_to car_path(@car)
  end

  def edit
    @car = Car.find(params[:id])
  end

   def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to cars_paths
  end

  private

  def car_params
    params.require(:car).permit(:model, :pickup_address, :price, :description)
  end

end
