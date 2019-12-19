class ApplicationController < ActionController::API

    def everything
        render json: {
            drawings: DrawingSerializer.all,
            user: UserSerializer.all
        }
    end

end
