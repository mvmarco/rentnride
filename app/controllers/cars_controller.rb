class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :authenticate_user!, only: [:new]
  after_action :verify_authorized

  def index
    if params[:search].present?
    @cars = Car.near(params[:search], 50)
    else
      @cars = Car.all
       # @cars = policy_scope(Car)
    end

  end

  def new
    @car = Car.new # car form instantiation
    authorize @car
  end

  def show
    @car = Car.find(params[:id])
    authorize @car
  end

  def create
    @car = Car.new(car_params)
    authorize @car
    #@car = Car.new(params[:car])
    @car.user = current_user

    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    @car.save
    redirect_to car_path(@car)
  end

   def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:model, :pickup_address, :price, :description, :photo)
  end

end
