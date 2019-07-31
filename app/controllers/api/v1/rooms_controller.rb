class Api::V1::RoomsController < ApplicationController

  def create
    @room = Room.create(room_params)
    if @room.valid?
      render json: { room: RoomSerializer.new(@room) }, status: :created
    else
      render json: { error: 'failed to create room' }, status: :not_acceptable
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    render json: @room
  end

  private

  def room_params
    params.require(:room).permit(:name, :user_id, :temp_F, :light, :humidity, :pet_access)
  end
end
