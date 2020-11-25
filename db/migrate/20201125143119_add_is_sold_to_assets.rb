class AddIsSoldToAssets < ActiveRecord::Migration[6.0]
  def change
    add_column :assets, :is_sold, :boolean, default: false
  end
end
