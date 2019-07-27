class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews,:options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :product_id
      t.string :name
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
