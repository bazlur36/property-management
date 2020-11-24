class CreateAssets < ActiveRecord::Migration[6.0]
  def change
    create_table :assets do |t|
      t.string :title
      t.string :description
      t.string :owner
      t.string :address
      t.integer :rooms
      t.integer :sqmt
      t.integer :floors
      t.boolean :air_cond
      t.float :price
      t.integer :units
      t.integer :shops
      t.integer :parking
      t.string :type

      t.timestamps
    end
  end
end
