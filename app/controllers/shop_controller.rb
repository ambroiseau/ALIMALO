class ShopController < ApplicationController
	def index
	  @shops= Shop.all
	end
	
  def show
	  @shop = Shop.find(params[:id])
	  @hours = @shop.operating_hours
	end

  def update
    @shop = Shop.find(params[:id])
    puts "/////////////#{@shop.id}////////////////////#{params[:shop][:frontpicture]}///////////////#{params}///////////////////////////////////////////////"
    @shop.frontpicture.attach(params[:shop][:frontpicture])
    redirect_to "/shop/#{params[:id]}"
  end
end
