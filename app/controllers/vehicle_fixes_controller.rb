class VehicleFixesController < ApplicationController

  def index
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle_fixes = VehicleFix.all.order('created_at DESC')
  end

  def new
    @vehicle_fix = Vehicle_fix.new
  end

  def create
    @vehicle_fix = Vehicle_fix.new(vehicle_fix_params)
    if @vehicle_fix.save
      redirect_to vehicle_vehicle_fixes_path
    else
      render :new
    end
  end

  private
  def vehicle_fix_params
    params.require(:vehicle_fix).permit(:title, :content, :mileage, :vehicle_id).merge(user_id: current_user.id)
  end
end

