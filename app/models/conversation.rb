class Conversation < ApplicationRecord
    has_many :messages, dependent: :destroy
    has_and_belongs_to_many :users
    

    validates :title, uniqueness: { case_sensitive: false }
end
