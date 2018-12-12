class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
			t.string :title
			t.belongs_to :user, index: true, optional: true
			t.string :adress
			t.decimal :latitude, optional: true
			t.decimal :longitude, optional: true
			t.boolean :tobacco
			t.string :image_url
	
      t.timestamps
    	end
			create_table :items_shops, id: false do |t|
				t.belongs_to :shop, index: true
				t.belongs_to :item, index: true
  	end
	end
end
