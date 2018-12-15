class AddSiretNumberToShops < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :siret, :string
  end
end
