class HomeController < ApplicationController
  def index
  	@shops = Shop.all
    @shop = Shop.first
  end
  def confidential
  end
end
