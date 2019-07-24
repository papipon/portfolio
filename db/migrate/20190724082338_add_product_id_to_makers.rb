class AddProductIdToMakers < ActiveRecord::Migration[5.2]
  def change
    add_column :makers, :product_id, :integer
  end
end
