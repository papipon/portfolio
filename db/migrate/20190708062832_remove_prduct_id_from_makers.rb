class RemovePrductIdFromMakers < ActiveRecord::Migration[5.2]
  def change
    remove_column :makers, :prduct_id, :integer
  end
end
