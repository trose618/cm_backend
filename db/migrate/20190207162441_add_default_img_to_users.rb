class AddDefaultImgToUsers < ActiveRecord::Migration[5.2]
  def up
    change_column_default :users, :image_url, "https://moonvillageassociation.org/wp-content/uploads/2018/06/default-profile-picture1-744x744.jpg"
  end

  def down
    
  end
end
