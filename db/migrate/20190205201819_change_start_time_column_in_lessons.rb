class ChangeStartTimeColumnInLessons < ActiveRecord::Migration[5.2]
  def change
    change_column :lessons, :startTime, :time
  end
end
