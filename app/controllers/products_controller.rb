class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
    session[:previous_page] = "products#show"
  end

  def index
    @products = Product.all
  end
end

