class LessonsChannel < ApplicationCable::Channel
    def subscribed
        stream_for current_user
        binding.pry
    end

    def received(data)
      LessonsChannel.broadcast_to(current_user, alert: "lesson update!")
    end
  
    def unsubscribed
      # Any cleanup needed when channel is unsubscribed
    end
end