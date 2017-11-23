class StoreProductsController < ApplicationController
  def create
    if current_retailer
      @retailer = current_retailer
      @storecollection = StoreCollection.find_by_retailer_id(@retailer)
      @product = Product.find(params[:product_id])
      new_store_product = StoreProduct.new
      new_store_product.product = @product
      new_store_product.store_collection = @storecollection
      if StoreProduct.pluck(:product_id).include?(@product.id)
        flash[:notice] = "You can't add the same product twice, you dumbo!"
      else
        new_store_product.save!
      end
      redirect_to designer_path(@product.designer)
      flash[:notice] = "Succesfully added #{@product.name}"
    else
      flash[:notice] = "You are not logged in"
      redirect_to root_path
    end
  end

  def destroy
   if current_retailer
      # @retailer = current_retailer
      # @storecollection = StoreCollection.find_by_retailer_id(@retailer)
      # @product = Product.find(params[:product_id])
      # @product.destroy
      @store_product = StoreProduct.where(product_id: params[:id], store_collection: current_retailer.store_collection).first

      @store_product.destroy

      if session[:previous_page] == "retailers#show"
        redirect_to retailer_path
      else
        redirect_to designer_path(@store_product.product.designer)
      end
      flash[:notice] = "Succesfully removed #{@store_product.product.name}"
    else
      flash[:notice] = "You are not logged in"
      redirect_to root_path
    end

  end
end
