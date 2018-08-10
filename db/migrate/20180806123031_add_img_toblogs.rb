class AddImgToblogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :img, :string
    
  end
end
