class ChangeLevelColumnInLessons < ActiveRecord::Migration[5.2]
  def change
    change_column :lessons, :client_level, :float
  end
end
