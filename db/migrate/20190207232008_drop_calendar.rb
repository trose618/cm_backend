class DropCalendar < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :calendar
  end
end
