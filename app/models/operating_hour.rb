class OperatingHour < ApplicationRecord
	belongs_to :shop
	validates_presence_of :day, :shop_id
	validates_inclusion_of :day, :in => 1..7
end
