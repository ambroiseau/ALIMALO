class Shop < ApplicationRecord
	belongs_to :user, optional: true
	has_and_belongs_to_many :items
	has_many :operating_hours, dependent: :destroy
	geocoded_by :adress
  after_validation :geocode
	validates :title, presence: true
validates :adress, presence: true
# validates :longitude, presence: true
# validates :latitude, presence: true
# validates :tobacco, presence: true
	def open?
		@time = Time.now.to_formatted_s(:time)
		#Recupere le numero du jour actuel
		day = Time.now
		day = day.strftime("%w")
	#Recupere l'operating_hour du jour actuel
		@open = self.operating_hours.find_by(day: day)
		@open.update(close_soon: false)

		@open_time = @open[:open].to_formatted_s(:time)
		@close_time = @open[:close].to_formatted_s(:time)


		if @open_time < @close_time
			if @time >= @open_time && @time <= @close_time
				if @time >= @open[:close] - 60*30
					@open.update(close_soon: true)
				end
			return true
			else
			return false
			end
		else
			if @time <= @open_time && @time >= @close_time
				return false
				else
					if @time >= @open[:close] - 60*45
						@open.update(close_soon: true)
					end
				return true
				end
			end
	end

end
