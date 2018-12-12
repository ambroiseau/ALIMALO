class ShopController < ApplicationController
	def index
	  @shops= Shop.all
	end
	def show
	  @shop = Shop.find(params[:id])
	  @hours = @shop.operating_hours
	end
end
