class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :update]

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

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:plant_care_rating))
      render json: { user: UserSerializer.new(@user) }, include: 'rooms.room_plants.plant', status: :accepted
    else
      render json: { error: @user.errors }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.permit(:username, :password, :plant_care_rating, :avatar)
  end
end
