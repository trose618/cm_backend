class ApplicationController < ActionController::API

    before_action :authorized

    def issue_token(payload)
        JWT.encode(payload, 'AINTSHIT')
    end

    def decode_token
        if request.authorization != "null"
            JWT.decode(get_token, 'AINTSHIT')[0]
        end
    end

    def get_token
        request.authorization
    end

    def current_user
        if request.authorization != "null"
            
            User.find(decode_token["user_id"])
        end
    end

    def logged_in?
    !!current_user
    end

    def authorized
       
        if !logged_in?
            render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
        end
    end
end
