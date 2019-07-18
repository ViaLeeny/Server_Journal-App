class LocationsController < ApplicationController

    def index
        locations = Location.all
        render json: locations, include: [:posts]
    end

    def show
        location = Location.find_by(id: params[:id])
        if location
          render json: location, include: [:posts]
        else
          render json: { error: "Location not found." }, status: 404
        end
      end

      

end 