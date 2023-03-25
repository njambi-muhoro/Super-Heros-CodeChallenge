class PowersController < ApplicationController
    # GET /powers
    def index
        render json: Power.all
    end
    #  GET /powers/:id
    def show
        power = Power.find(params[:id])
        if power
            render json: power, status: :ok
        else
            render json: { "error": "Power not found"}, status: :not_found
        end
    end
    #  PATCH /powers/:id
    def update
        power = Power.find(params[:id])
        if power
            if power.update(power_params)
                render json: power, status: :accepted
            else
                render json: { "errors": ["validation errors"]}, status: :unprocessable_entity
            end
        else
            render json: { "error": "Power not found"}, status: :not_found
        end
    end
    private
    def power_params
        params.permit(:description)
    end
end