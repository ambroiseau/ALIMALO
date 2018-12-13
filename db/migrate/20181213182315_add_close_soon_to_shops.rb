class AddCloseSoonToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :close_soon, :boolean
  end
end
