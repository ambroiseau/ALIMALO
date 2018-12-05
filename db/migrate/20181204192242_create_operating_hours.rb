class CreateOperatingHours < ActiveRecord::Migration[5.2]
  def change
    create_table :operating_hours, index: false do |t|
		t.belongs_to :shop, index: true
  	t.integer :day_of_week
		t.string :name_of_day
  	t.time :open
  	t.time :close

    end
  end
end
