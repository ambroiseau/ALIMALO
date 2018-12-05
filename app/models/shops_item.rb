class ShopsItem < ApplicationRecord
	belongs_to :shop
	belongs_to :item
end
