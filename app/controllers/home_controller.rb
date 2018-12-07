class HomeController < ApplicationController
  def index
  	@shops = Shop.all
  end
end
