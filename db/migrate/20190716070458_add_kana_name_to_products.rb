class AddKanaNameToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :kana_name, :string
  end
end
