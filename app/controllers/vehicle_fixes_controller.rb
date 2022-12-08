class VehicleFixesController < ApplicationController
  before_action :authenticate_user!, only: 

  def index
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle_fixes = VehicleFix.where(vehicle_id:params[:vehicle_id]).order('created_at DESC')
  end

  def new
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle_fix = VehicleFix.new
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

  def edit
    @vehicle = Vehicle.find(params[:vehicle_id])
    @vehicle_fix = VehicleFix.find(params[:id])
  end

  def update
    @vehicle_fix = VehicleFix.find(params[:id])
    if @vehicle_fix.update(vehicle_fix_params)

      redirect_to vehicle_vehicle_fixes_path
    else
      render :edit
    end
  end

  private
  def vehicle_fix_params
    params.require(:vehicle_fix).permit(:title, :content, :image, :mileage).merge(user_id: current_user.id, vehicle_id: @vehicle.id)
  end



end

