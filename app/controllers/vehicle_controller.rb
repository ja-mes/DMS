class VehicleController < ApplicationController
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
        end
    end


    private
    def vehicle_params
        params.require(:vehicle).permit(:make, :model)
    end
end
