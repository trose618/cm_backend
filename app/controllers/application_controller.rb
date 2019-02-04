class ApplicationController < ActionController::API

    before_action :authorized

    def issue_token(payload)
        JWT.encode(payload, 'AINTNOTHING')
    end

    def decode_token
        JWT.decode(get_token, 'AINTNOTHING')[0]
    end

    def get_token
        request.authorization
    end

    def current_user?
        if request.authorization            
            User.find(decode_token["user_id"])
        end
    end

    def logged_in?
    !!current_user?
    end

    def authorized
       
        if !logged_in?
            render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
        end
    end
end
