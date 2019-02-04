class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.datetime :startTime
      t.datetime :endTime
      t.bigint :client_level
      t.string :client_name
      t.string :age_range
      t.string :lesson_focus
      t.string :client_email
      t.string :location
      t.bigint :coach_id, references: :User
      t.bigint :client_id, references: :User

      t.timestamps
    end
  end
end
