class Api::V1::PlantsController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    if params['q']
      query = params['q'].downcase
      @plants = Plant.where("lower(scientific_name) like ? or lower(common_name) like ?", "%#{query}%", "%#{query}%").limit(6)
    elsif recommend_params
      if params['pet_access'] == true
        @plants = Plant.where("toxic = '0' AND difficulty <= ? AND light_pref - light_tolerance < ? AND light_pref + light_tolerance > ? AND temp_f - temp_tolerance < ? AND temp_f + temp_tolerance > ? AND humidity_pref - ? < 30", params['plant_care_rating'], params['light'], params['light'], params['temp_f'], params['temp_f'], params['humidity']).sample(1)[0]
      else
        @plants = Plant.where("difficulty <= ? AND light_pref - light_tolerance < ? AND light_pref + light_tolerance > ? AND temp_f - temp_tolerance < ? AND temp_f + temp_tolerance > ? AND humidity_pref - ? < 30", params['plant_care_rating'], params['light'], params['light'], params['temp_f'], params['temp_f'], params['humidity']).sample(1)[0]
      end
    else
      @plants = Plant.all
    end
    render json: @plants.as_json(except: [:room_plants, :rooms, :created_at, :updated_at])
  end

  def create
    @plant = Plant.find_or_create_by(plant_params)
    if @plant.valid?
      render json: { plant: PlantSerializer.new(@plant) }, status: :created
    else
      render json: { error: 'failed to create plant' }, status: :not_acceptable
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:common_name, :scientific_name, :temp_f, :temp_tolerance, :light_pref, :light_tolerance, :humidity_pref, :difficulty, :toxic)
  end

  def recommend_params
    params.permit(:plant_care_rating, :temp_f, :light, :humidity, :pet_access)
  end

end
