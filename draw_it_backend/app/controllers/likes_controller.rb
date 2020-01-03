class LikesController < ApplicationController
    def index
        likes = Like.all
        render json:  likes
    end

    def create
        like = Like.new(user_id: params[:user_id], drawing_id: params[:drawing_id])

        if like.save
            render json: like
               
        else
            render json: {
                errors: like.errors.full_messages
            }
        end
    end

    def update
        like = Like.find(params[:id])
        like.update(user_id: params[:user_id], drawing_id: params[:drawing_id] )
     
        render json: like
    end

end
