class OperatingHoursController < ApplicationController
	before_action :shop_all_hours, only: [:index, :create, :edit, :update]	
	before_action :shop_day_hours, only: [:edit, :update]
	respond_to :html, :js

	def show
	end

	def edit
	end
	
	def update
		id_shop= params[:shop_id]
 		@hour.update_attributes(hours_params)
	end

private
	def shop_all_hours
		@shop = Shop.find(params[:shop_id])
		@hours = @shop.operating_hours
	end
	def shop_day_hours
		@hour = @shop.operating_hours.find(params[:id])
	end	
  def hours_params
    params.require(:operating_hour).permit(:open, :close)
  end

end
