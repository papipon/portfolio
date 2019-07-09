class AddMakerToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :maker, :string
  end
end
