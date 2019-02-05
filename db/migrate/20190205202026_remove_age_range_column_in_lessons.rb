class RemoveAgeRangeColumnInLessons < ActiveRecord::Migration[5.2]
  def change
    remove_column :lessons, :age_range
  end
end
