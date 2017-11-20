class StoreProductsController < ApplicationController
  def create
    if current_retailer
      @retailer = current_retailer
      @storecollection = StoreCollection.find_by_retailer_id(@retailer)
      @product = Product.find(params[:product_id])
      new_store_product = StoreProduct.new
      new_store_product.product = @product
      new_store_product.store_collection = @storecollection
      new_store_product.save!
      redirect_to retailer_path
    else
      flash[:notice] = "You are not logged in"
      redirect_to root_path
    end
  end
end
