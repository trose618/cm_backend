module ApplicationCable
  class Connection < ActionCable::Connection::Base 
    # identified_by :current_user

    # def connect
    #   self.current_user = find_verified_user
    # end

    # private

    #   def find_verified_user
    #     if verified_user = User.find_by(decode_token["user_id"])
    #       verified_user
    #     else
    #       reject_unauthorized_connection
    #     end
    #   end

    #   def get_token
    #     request.authorization
    #   end

    #   def auth_header
    #     request.headers['Authorization']
    #   end
     
    #   def decoded_token
    #     if auth_header
    #       token = auth_header.split(' ')[1]
    #       begin
    #         JWT.decode(get_token, 'AINTNOTHING')[0]
    #       rescue JWT::DecodeError
    #         nil
    #       end
    #     end
    #   end
     
    #   def current_user
    #     if decoded_token
    #       # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
    #       # or nil if we can't decode the token
    #       user_id = decoded_token[0]['user_id']
    #       @user = User.find_by(id: user_id)
    #     end
    #   end
     
    #   def logged_in?
    #     !!current_user
    #   end
    end
  end

