class StoreProductsController < ApplicationController

  def create
    @retailer = current_retailer
    @storecollection = StoreCollection.find_by_retailer_id(@retailer)
    @product = Product.find(params[:product_id])
    new_store_product = StoreProduct.new
    new_store_product.product = @product
    new_store_product.store_collection = @storecollection
    new_store_product.save!

    respond_to do |format|
      format.html {
        redirect_to designer_path(@product.designer)
        flash[:notice] = "Succesfully added #{@product.name}"
      }
      format.js
    end
  end

  def destroy
    @store_product = StoreProduct.where(product_id: params[:id], store_collection: current_retailer.store_collection).first
    @product = @store_product.product
    @store_product.destroy

    respond_to do |format|
      format.html {
        if session[:previous_page] == "retailers#show"
          redirect_to retailer_path
        else
          redirect_to designer_path(@store_product.product.designer)
        end
        flash[:notice] = "Succesfully removed #{@store_product.product.name}"
      }
      format.js
    end
  end

end
