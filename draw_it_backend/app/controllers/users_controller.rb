class UsersController < ApplicationController

    # def index 
    #     users = User.all
    #     render json: users, only: [:id, :username]
    # end

    # def show
    #     user = User.find(params[:id])
    #     if user
    #         render json: {
    #             user: user
    #         }
    #     else
    #         render json: {
    #             status: :unauthorized, 
    #             errors: ['user not found']
    #         }
    #     end        
    # end

    # def create
    #     user = User.new(user_params)
    #     if user.save
    #         login!
    #         render json: {
    #             status: :created,
    #             user: user
    #         }
    #     else
    #         render json: {
    #             status: :unauthorized,
    #             errors: user.errors.full_messages
    #         }
    #     end
    # end

    def login
        user = User.find_by(username: user_login_params[:username])
        if user && user.authenticate(user_login_params[:password])
            render json: { user: UserSerializer.new(user), token: encode_token(user_id: user.id) }, status: :accepted
        else
            render json: { message: 'Invalid email or password' }, status: :unauthorized
        end
    end

    private
    def user_login_params
        params.require(:user).permit(:username, :password)
    end

end
