class Lesson < ApplicationRecord
  belongs_to :coach, class_name: :User
  belongs_to :client, class_name: :User

end
