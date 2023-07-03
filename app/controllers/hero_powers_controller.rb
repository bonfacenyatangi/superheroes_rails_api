class HeroPowersController < ApplicationController
    def create
      hero = Hero.find_by(id: params[:hero_id])
      power = Power.find_by(id: params[:power_id])
  
      if hero && power
        hero_power = HeroPower.new(hero: hero, power: power, strength: params[:strength])
  
        if hero_power.save
          render json: hero, include: { powers: { only: [:id, :name, :description] } }
        else
          render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { error: 'Hero or Power not found' }, status: :not_found
      end
    end
  end
  