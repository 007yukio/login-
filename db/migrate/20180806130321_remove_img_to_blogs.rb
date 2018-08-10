class RemoveImgToBlogs < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :img, :string
  end
end
