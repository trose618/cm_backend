class AddUsersToConversation < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :user_one_id, :bigint
    add_column :conversations, :user_two_id, :bigint
  end
end
