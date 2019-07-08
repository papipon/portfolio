class AddImageIdToImgs < ActiveRecord::Migration[5.2]
  def change
    add_column :imgs, :image_id, :string
  end
end
