class MoodsController < ApplicationController

    def index
        moods = Mood.all
        render json: moods
    end

end 