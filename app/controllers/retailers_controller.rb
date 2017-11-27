class RetailersController < ApplicationController
  def show
    @retailer = Retailer.eager_load(store_collection: [store_products: [product: [:designer]]]).find(current_retailer.id)
    @store_products_grouped_by_designer = @retailer.store_products.group_by do |store_product|
      store_product.product.designer
    end
    session[:previous_page] = "retailers#show"
  end

  def index
    @retailers = Retailer.all
  end
end
