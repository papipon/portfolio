class RemovePoductIdFromMakers < ActiveRecord::Migration[5.2]
  def change
    remove_column :makers, :product_id, :integer
  end
end
