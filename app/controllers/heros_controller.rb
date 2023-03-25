class HerosController < ApplicationController
    def index       
        render json: Hero.all, each_serializer: HeroWithoutPowersSerializer
    end

    def show
        heroes = Hero.find_by(id: params[:id])
        if heroes
            render json: heroes
        else
            render json: {error: "Hero not found"}
        end
    end
end
