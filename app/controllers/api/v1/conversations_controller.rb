class Api::V1::ConversationsController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]
  
    def index
        conversations = Conversation.all
        render json: conversations
      end

      def users_convos
        id = decode_token["user_id"]
        conversations = Conversation.all.select{|convo| convo.user_one_id == id || convo.user_two_id == id}
        render json: conversations
        
      end
    
      def create
        @conversation = Conversation.new(conversation_params)
        
        if @conversation.save
          render json: {conversation: @conversation}
          
        else
          render json: { error: 'Failed to create convo, already exists' }
        end
      end
      
      private
      
      def conversation_params
        params.require(:conversation).permit(:title, :user_one_id, :user_two_id)
      end
end
