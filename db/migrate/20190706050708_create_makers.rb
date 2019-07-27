class CreateMakers < ActiveRecord::Migration[5.2]
  def change
    create_table :makers,:options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :prduct_id
      t.string :name

      t.timestamps
    end
  end
end
