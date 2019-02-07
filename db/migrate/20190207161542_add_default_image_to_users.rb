class AddDefaultImageToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :image_url, :string, :default => `https://moonvillageassociation.org/wp-content/uploads/2018/06/default-profile-picture1-744x744.jpg`
  end
end
