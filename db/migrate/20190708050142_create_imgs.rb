class CreateImgs < ActiveRecord::Migration[5.2]
  def change
    create_table :imgs do |t|
      t.integer :product_id

      t.timestamps
    end
  end
end
