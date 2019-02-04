class UserSerializer < ActiveModel::Serializer
  has_many :lessons
  has_many :jobs
  attributes :id, :username, :client
end
