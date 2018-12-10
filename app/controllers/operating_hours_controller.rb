class OperatingHoursController < ApplicationController

	def index
		@shop = Shop.find(params[:shop_id])
		@hours = @shop.operating_hours

	end

	def new
	end

	def create
	end
	def show
	end

	def edit
		shop = Shop.find(params[:shop_id])
		@hours = shop.operating_hours.find(params[:id])

	end
	
def update
	shop = Shop.find(params[:shop_id])
	id_shop= params[:shop_id]
	@hours = shop.operating_hours.find(params[:id])
 
  if @hours.update(hours_params)
    redirect_to "/shop/#{id_shop}/operating_hours"
  else
    render 'edit'
  end
end

private
  def hours_params
    params.require(:operating_hour).permit(:open, :close)
  end

end
