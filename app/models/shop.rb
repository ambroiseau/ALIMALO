class Shop < ApplicationRecord
	belongs_to :user, optional: true
	has_and_belongs_to_many :items
	has_many :operating_hours, dependent: :destroy
	geocoded_by :adress
  after_validation :geocode
	has_one_attached :frontpicture
  has_many_attached :pictures
	validates :title, presence: true
	validates :adress, presence: true

	def open?
		@time = Time.now.to_formatted_s(:time)
		if Time.now.strftime('%H:%M') > '00:00' and Time.now.strftime('%H:%M') < '07:00'
			day = Time.now.advance(days: -1)
		else
			day = Time.now
		end
		day = day.strftime("%w")
		@open = self.operating_hours.find_by(day: day)
		@open_time = @open[:open].to_formatted_s(:time)
		@close_time = @open[:close].to_formatted_s(:time)
		
		if @open_time < @close_time
			if @time >= @open_time && @time <= @close_time
				return true
			else
				return false
			end
		else
			if @time <= @open_time && @time >= @close_time
					return false
				else
					return true
				end
			end
	end
	def close_soon?
		if self.open?
			if Time.now + 60*30 >= @close_time
				return true
			else
				return false
			end
		end
	end
end

