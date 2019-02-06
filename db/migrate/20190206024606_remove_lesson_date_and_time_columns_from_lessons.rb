class RemoveLessonDateAndTimeColumnsFromLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :startTime
    change_column :lessons, :lesson_date, :datetime
  end
end
