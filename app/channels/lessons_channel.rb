class LessonsChannel < ApplicationCable::Channel
    def subscribed
        stream_from "lessons_channel"
    end
  
    def unsubscribed
      # Any cleanup needed when channel is unsubscribed
    end
end