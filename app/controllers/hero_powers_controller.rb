class HeroPowersController < ApplicationController
    # POST /hero_power
 def create
     # Check if the power and hero exist in the database
     hero = Hero.find( params[:hero_id])
     power = Power.find( params[:power_id])
     # Check if power exists for the hero
     if hero.powers.exists?(params[:power_id])
         render json: {"errors": "Power with similar ID already exists for the hero"}, status: :unprocessable_entity
         return
     end
     # Add power to the hero if it does not exist
     hero_power = HeroPower.create(hero_powers_params)
     if hero_power.valid?
         render json: hero, status: :created
     else
         render json: {"error": hero_power.errors.full_messages}, status: :unprocessable_entity
     end
 end
     private
     def hero_powers_params
         params.permit(:hero_id, :power_id, :strength)
     end
 end