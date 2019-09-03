class LocationsController < ApplicationController

  def index
      location = Location.all
      render json: location, include: [:posts]
  end

    
  def show
    location = Location.find_by(id: params[:id])
    if location
      render json: location, include: [:posts]
    else
      render json: { error: "location not found."}, status: 404
    end
  end

end
