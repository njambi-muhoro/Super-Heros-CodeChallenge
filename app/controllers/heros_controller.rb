class HerosController < ApplicationController
    def index       
        render json: Hero.all
    end

    def show
        heroes = Hero.find(id: params[:id])
        if heroes
            render json: heroes
        else
            render json: {error: "Hero not found"}
        end
    end
end
