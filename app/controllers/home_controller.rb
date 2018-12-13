class HomeController < ApplicationController
  def index
  	@shops = Shop.all
  end
  def confidential
  end
end
