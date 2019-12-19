class DrawingsController < ApplicationController

    def index
        render json: {
            drawings: DrawingSerializer.all,
            user: UserSerializer.all
        }
    end
end
