class AddNameOfDayToOperatingHours < ActiveRecord::Migration[5.2]
  def change
    add_column :operating_hours, :name_of_day, :string
  end
end
