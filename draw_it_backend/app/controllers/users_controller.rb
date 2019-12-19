class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users, only: [:id, :username]
    end
end
