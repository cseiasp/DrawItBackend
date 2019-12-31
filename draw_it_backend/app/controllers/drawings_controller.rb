class DrawingsController < ApplicationController

    def index
        render json: {
            drawings: DrawingSerializer.all,
            user: UserSerializer.all
        }
    end

    def show
        drawing = Drawing.find(params[:id])

        render json: drawing
    end

    def update
        drawing = Drawing.find(params[:id])
        drawing.update(number_of_likes: params[:number_of_likes])
     
        render json: drawing
    end

    def create
        drawing = Drawing.new(user_id: params[:user_id], url: params[:url])

        if drawing.save
            render json: {
                status: :created,
                drawing: drawing,
                user: UserSerializer.new(drawing.user)
            }
        else
            render json: {
                errors: drawing.errors.full_messages
            }
        end
    end

    
end
