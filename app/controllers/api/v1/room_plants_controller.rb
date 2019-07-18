class Api::V1::RoomPlantsController < ApplicationController

  def create
    @room_plant = RoomPlant.create(room_plant_params)
    if @room_plant.valid?
      render json: { room_plant: RoomPlantSerializer.new(@room_plant) }, status: :created
    else
      render json: { error: 'failed to create room_plant' }, status: :not_acceptable
    end
  end

  private

  def room_plant_params
    params.require(:room_plant).permit(:room_id, :plant_id, :nickname, :notes, :watering_delay_days)
  end
end