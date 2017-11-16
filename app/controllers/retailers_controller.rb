class RetailersController < ApplicationController
  def show
    @retailer = current_retailer
  end

  def index
    @retailers = Retailer.all
  end
end
