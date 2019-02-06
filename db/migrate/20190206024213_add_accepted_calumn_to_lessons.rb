class AddAcceptedCalumnToLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :accepted, :boolean
  end
end
