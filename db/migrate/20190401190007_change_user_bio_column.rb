class ChangeUserBioColumn < ActiveRecord::Migration[5.2]
  def up
    change_column_default :users, :bio, "No bio set."
  end

  def down
  end
end
