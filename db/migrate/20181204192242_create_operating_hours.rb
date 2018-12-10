class CreateOperatingHours < ActiveRecord::Migration[5.2]
  def change
    create_table :operating_hours, index: false do |t|
		t.belongs_to :shop, index: true
  	t.integer :day
		t.time :open
  	t.time :close
		t.datetime :valid_from
		t.datetime :valid_through

    end
  end
end
