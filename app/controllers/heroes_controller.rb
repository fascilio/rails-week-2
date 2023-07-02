class HeroesController < ApplicationController
  def index
    heroes = Hero.all
    render json: heroes, each_serializer: HeroSerializer
  end

  def show
    hero = Hero.find(params[:id])
    render json: hero, serializer: HeroSerializer
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Hero not found' }, status: :not_found
  end
end
