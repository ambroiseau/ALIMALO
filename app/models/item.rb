class Item < ApplicationRecord
	has_and_belongs_to_many :shops
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true
	validates :image_url, presence: true

end
