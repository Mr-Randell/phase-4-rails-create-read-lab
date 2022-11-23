class PlantsController < ApplicationController

    wrap_parameters format: []

    # GET /plants
    def index
        render json: Plant.all, status: 200
    end
    
    # POST /plants
    def create
        plant = Plant.create(plant_params)
        render json: plant, status: 201
    end

    # GET /plants
    def show
        plant = Plant.find_by(id: params[:id])
        render json: plant, status: 200
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
