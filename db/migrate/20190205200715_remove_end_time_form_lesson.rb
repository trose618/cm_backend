class RemoveEndTimeFormLesson < ActiveRecord::Migration[5.2]
  def change
   remove_column :lessons, :endTime
  end
end
