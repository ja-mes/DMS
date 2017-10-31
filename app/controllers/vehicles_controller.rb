class VehiclesController < ApplicationController
    def index
        @vehicles = Vehicle.all
    end

    def new
        @vehicle  = Vehicle.new
    end

    def create
        @vehicle = Vehicle.new(vehicle_params)
        if @vehicle.save
            flash[:success] = "Vehicle successfully created"
            redirect_to vehicles_path
        else
            render 'new'
        end

    end

    def show
        @vehicle = Vehicle.find(params[:id])
    end

    private
    def vehicle_params
        params.require(:vehicle).permit(:year, :make, :model)
    end
end
