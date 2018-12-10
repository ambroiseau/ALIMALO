class Shop < ApplicationRecord
	belongs_to :user, optional: true
	has_and_belongs_to_many :items
	has_many :operating_hours, dependent: :destroy

	def is_open?
		@time = Time.now.to_formatted_s(:time)

		#Recupere le numero du jour actuel
		day = Time.now
		day = day.strftime("%w")


#Recupere l'operating hour du jour souhaité à automatise
		@open = self.operating_hours.find_by(day: day)

		@open_time = @open[:open].to_formatted_s(:time)
		@close_time = @open[:close].to_formatted_s(:time)

	if @time >= @open_time && @time <= @close_time
		return true
	else
		return false
	end
	

	end

end
