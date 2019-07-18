class Api::V1::PlantsController < ApplicationController
  
  def create
    @plant = Plant.create(plant_params)
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
end