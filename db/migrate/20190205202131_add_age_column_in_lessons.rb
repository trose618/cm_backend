class AddAgeColumnInLessons < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :client_age, :bigint
  end
end
