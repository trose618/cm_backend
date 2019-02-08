class SetDefaultBio < ActiveRecord::Migration[5.2]
  def up
    change_column_default :users, :bio, "Quisque purus tellus, eleifend elementum tortor congue, accumsan
    vehicula metus. Praesent non sapien ut arcu aliquet varius at ac
    nisi. Aliquam ut posuere metus, ac fringilla lectus. Interdum et
    malesuada fames ac ante ipsum primis in faucibus. Integer
    ullamcorper non lacus maximus viverra. Sed et faucibus orci. In
    efficitur ante ac sapien lobortis, posuere tempor orci gravida."
  end

  def down
  end
end
