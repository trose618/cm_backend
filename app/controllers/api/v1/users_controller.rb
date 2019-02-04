class Api::V1::UsersController < ApplicationController
    
    skip_before_action :authorized, only: [:create, :coaches]

    def index
        @users = User.all
        render json: @users
    end

    def update
    end

    def coaches
        @users = User.all.select{|user| user.client == false}
        
        render json: @users
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            token = JWT.encode({user_id: @user.id}, 'AINTSHIT')
            render json: {user: @user, jwt: token}
        else
            render json: { error: 'Failed to create account' }, status: 422
        end  
    end

    def reload
        @user = User.find(decode_token["user_id"])

        if @user
            render json: {user: @user}
        else
            #byebug
            render json: { error: 'Bad Key' }
        end

    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :client, :password)
    end

    def find_user
        @user = User.find(params[:id])
    end

end
