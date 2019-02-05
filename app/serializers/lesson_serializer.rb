class LessonSerializer < ActiveModel::Serializer
    attributes :startTime, :client_level, :client_name, :lesson_focus, :client_email, :coach_id, :client_id, :lesson_date, :client_age
end