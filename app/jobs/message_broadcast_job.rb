class MessageBroadcastJob < ApplicationJob
    queue_as :default
  
    def perform(message)
      payload = {
        message_id: message.id,
        room_id: message.conversation.id,
        content: message.text,
        sender: message.user_id,
        created_at: message.created_at,
        participants: [message.conversation.user_one_id, message.conversation.user_two_id]
      }
      ActionCable.server.broadcast(build_room_id(message.conversation.id), payload)
    end
    
    def build_room_id(id)
      "ChatRoom-#{id}"
    end
  end