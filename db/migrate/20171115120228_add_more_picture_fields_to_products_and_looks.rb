class AddMorePictureFieldsToProductsAndLooks < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :picture_5, :string

    add_column :looks, :picture_4, :string
    add_column :looks, :picture_5, :string
  end
end
