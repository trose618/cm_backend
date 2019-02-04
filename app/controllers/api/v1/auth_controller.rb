class Api::V1::AuthController < ApplicationController

    skip_before_action :authorized, only: [:create]

    def create
        
        user = User.find_by(username: login_user_params[:username])
        
        if user && user.authenticate(login_user_params[:password])
            
            token = JWT.encode({user_id: user.id}, 'AINTNOTHING')
            render json: {user: user, jwt: token}
        else
            render json: {error: "Invalid username or password"}, status: 400
        end
    end

    def show
        if current_user
            render json: {user: current_user}
        else
            render json: {error: "some error"}, status: 422
        end
    end

    private

    def login_user_params
        params.require(:user).permit(:username, :password, :client)
    end 
end