class AddCoachColumnToTable < ActiveRecord::Migration[5.2]
  def change
    add_column :lessons, :coach_name, :string
  end
end
