class VehiclesController < ApplicationController
  before_action :authenticate_user!, only: 

  def index
    @vehicles = Vehicle.all.order('created_at DESC')
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    set_vehicle
  end

  def update
    set_vehicle
    if @vehicle.update(vehicle_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    set_vehicle
    @vehicle.destroy
    redirect_to root_path
  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:manufacturer, :image, :vehicle_name, :next_inspection).merge(user_id: current_user.id)
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

end


