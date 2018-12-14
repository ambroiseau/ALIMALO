class ShopController < ApplicationController
before_action :all_shops, only: [:index, :create]
	respond_to :html, :js
	def new
		@shop = Shop.new
	end
	def create
		@shop = Shop.create(shop_params)
		if @shop.save
			redirect_to shop_path(@shop.id)
		else
			render :action => 'new'
		end
	end
	
  def show
	  @shop = Shop.find(params[:id])
	  @hours = @shop.operating_hours
	end
	def edit
    @shop = Shop.find(params[:id])
	end
  def update
    @shop = Shop.find(params[:id])
    @shop.frontpicture.attach(params[:shop][:frontpicture])
    redirect_to "/shop/#{params[:id]}"
		 if  @shop.update_attributes(shop_params)
    else
      render :action => :edit
    end
  end

	def destroy
    @shop = Shop.find params[:id]
    @shop.destroy
    redirect_to "/shop"
  end
	private
	def all_shops
		@shops = Shop.all
	end

	def shop_params
		params.require(:shop).permit(:title, :adress, :tobacco, :user_id)
	end
end
