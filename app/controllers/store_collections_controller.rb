class StoreCollectionsController < ApplicationController
  def show
    @store_collection = StoreCollection.find(params[:id])
  end

  def index
    @store_collections = StoreCollection.all
  end

  def add
    @retailer = current_retailer
    @storecollection = StoreCollection.find_by_retailer_id(@retailer)
    @product = Product.find(params[:id])
    new_store_product = StoreProduct.new
    new_store_product.product = @product
    new_store_product.store_collection = @StoreCollection
    new_store_product.save!
  end

end
