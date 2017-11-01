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

    def edit
        @vehicle = Vehicle.find(params[:id])
    end

    def update
        @vehicle = Vehicle.find(params[:id])

        if @vehicle.update(vehicle_params)
            flash[:sucess] = "Vehicle succesfully update"
            redirect_to edit_vehicle_path
        else
            render 'edit'
        end 
    end

    private
    def vehicle_params
        params.require(:vehicle).permit(:year, :make, :model)
    end
end
