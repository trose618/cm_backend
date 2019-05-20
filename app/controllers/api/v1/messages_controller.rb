class Api::V1::MessagesController < ApplicationController
  skip_before_action :authorized
    def index
      messages = Message.all
      render json: messages
    end

    def create
        message = Message.new(message_params)
        if message.save
          render json: {message: message }
      
        else
          render json: {error: "unable to create message", issues: message.erros}
        end
      end
      
      private
      
      def message_params
        params.require(:message).permit(:text, :conversation_id, :user_id)
      end
end
