class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def index
    @users = User.all
    render json: @users
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, include: 'rooms.room_plants.plant', status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: @user.errors }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:username, :password, :plant_care_rating, :avatar)
  end
end
