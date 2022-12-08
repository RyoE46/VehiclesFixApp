class VehicleFixesController < ApplicationController
  before_action :authenticate_user!, only: 

  def index
    @vehicle_fixes = VehicleFix.where(vehicle_id:params[:vehicle_id])
    @vehicle = Vehicle.find(params[:vehicle_id])
  end

  def new
    @vehicle_fix = VehicleFix.new
    @vehicle = Vehicle.find(params[:vehicle_id])
  end

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle_fix = VehicleFix.new(vehicle_fix_params)
    if @vehicle_fix.save
      redirect_to vehicle_vehicle_fixes_path
    else
      render :new
    end
  end

  private
  def vehicle_fix_params
    params.require(:vehicle_fix).permit(:title, :content, :mileage).merge(user_id: current_user.id, vehicle_id: @vehicle.id)
  end



end

