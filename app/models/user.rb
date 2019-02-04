class User < ApplicationRecord
    has_many :jobs, class_name: :Lesson, foreign_key: :coach_id
    has_many :lessons, class_name: :Lesson, foreign_key: :client_id
    has_secure_password
    validates :username, presence: true
    validates :password, presence: true
    validates :username, uniqueness: { case_sensitive: false }
end
