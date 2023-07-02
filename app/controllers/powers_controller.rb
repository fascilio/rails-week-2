class PowersController < ApplicationController
  def index
    powers = Power.all
    render json: powers, each_serializer: PowerSerializer
  end

  def show
    power = Power.find(params[:id])
    render json: power, serializer: PowerSerializer
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Power not found' }, status: :not_found
  end

  def update
    power = Power.find(params[:id])
    if power.update(power_params)
      render json: power, serializer: PowerSerializer
    else
      render json: { errors: power.errors.full_messages }, status: :unprocessable_entity
    end
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Power not found' }, status: :not_found
  end

  private

  def power_params
    params.require(:power).permit(:description)
  end
end
