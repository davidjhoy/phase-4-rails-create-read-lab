class PlantsController < ApplicationController
    wrap_parameters format: []
    def index
        plant = Plant.all 
        render json: plant, status: :ok

    end 

    def show
        plant = Plant.find(params[:id])
        render json: plant, status: :ok

    end

    def create
        new_plant = Plant.create(strong_params)
        render json: new_plant, status: :created
    end

    private
    def strong_params
        params.permit(:name, :image, :price)
    end

end
