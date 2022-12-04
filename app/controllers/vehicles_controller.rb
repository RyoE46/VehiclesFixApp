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

  private
  def vehicle_params
    params.require(:vehicle).permit(:manufacturer, :vehicle_name, :next_inspection).merge(user_id: current_user.id)
  end
end


