class StoreProduct < ApplicationRecord
  belongs_to :product
  belongs_to :store_collection
  has_many :order_products
end
