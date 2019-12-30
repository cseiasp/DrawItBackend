class DrawingsController < ApplicationController

    def index
        render json: {
            drawings: DrawingSerializer.all,
            user: UserSerializer.all
        }
    end

    def create
        drawing = Drawing.new(user_id: params[:user_id], url: params[:url])

        if drawing.save
            render json: {
                status: :created,
                drawing: drawing
            }
        else
            render json: {
                errors: drawing.errors.full_messages
            }
        end
    end

    
end
