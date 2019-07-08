class AddImageColourToImgs < ActiveRecord::Migration[5.2]
  def change
    add_column :imgs, :image_colour, :string
  end
end
