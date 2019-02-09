class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_one_id, :user_two_id
  has_many :messages
end
