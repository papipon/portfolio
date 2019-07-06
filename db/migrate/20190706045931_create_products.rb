class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :colour
      t.string :size
      t.string :mobile_img_id
      t.string :battery
      t.string :speed
      t.string :camera_out
      t.string :camera_in
      t.string :waterproof
      t.string :onesegment
      t.string :felica
      t.string :authentication
      t.string :display
      t.string :ram
      t.string :rom

      t.timestamps
    end
  end
end
