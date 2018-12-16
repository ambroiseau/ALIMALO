class ShopController < ApplicationController
	before_action :all_shops, only: [:index, :create]
	before_action :shop, except: [:new, :create, :index]
	after_action :create_operating_hours, only: [:create], if: -> {@shop.save}
	respond_to :html, :js
	
	def new
		@shop = Shop.new
	end
	def create
		@shop = Shop.new(shop_params)
		if @shop.save
			redirect_to shop_path(@shop.id)
		else
			render :action => 'new'
		end
	end
	
  def show
	  @hours = @shop.operating_hours
	end
	def edit
	end
	def update_picture
		@shop = Shop.find(params[:id])
		 if @shop.frontpicture.attach(params[:shop][:frontpicture])
    	redirect_to "/shop/#{params[:id]}"
		end
	end
  def update
		if params[:commit] == "Upload"
		 if @shop.frontpicture.attach(params[:shop][:frontpicture])
    	redirect_to "/shop/#{params[:id]}"
			end
		else
			 	if  @shop.update_attributes(shop_params)
    		redirect_to "/shop/#{params[:id]}"
    		else
      	render :action => :edit
    	end
  end
end
	def destroy
    @shop.destroy
    redirect_to "/shop"
  end
	private
	def shop
    @shop = Shop.find(params[:id])
	end
	def all_shops
		@shops = Shop.all
	end

	def shop_params
		params.require(:shop).permit(:title, :adress, :tobacco, :user_id)
	end

	def create_operating_hours
    @shop.operating_hours.create(name_of_day: 'Dimanche' ,day: 0, open: '10:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
		@shop.operating_hours.create(name_of_day: 'Lundi' ,day: 1, open: '10:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
		@shop.operating_hours.create(name_of_day: 'Mardi' ,day: 2, open: '10:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
		@shop.operating_hours.create(name_of_day: 'Mercredi' ,day: 3, open: '10:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
		@shop.operating_hours.create(name_of_day: 'Jeudi' ,day: 4, open: '10:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
		@shop.operating_hours.create(name_of_day: 'Vendredi' ,day: 5, open: '10:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
		@shop.operating_hours.create(name_of_day: 'Samedi',day: 6, open: '10:00', close: '02:00',valid_from: '01/10/2018', valid_through: '31/12/2018')
	end
end
