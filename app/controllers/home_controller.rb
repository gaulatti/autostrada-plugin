class HomeController < ApplicationController
    def index
        render json: "Tutta L'Italia!"
    end
end
