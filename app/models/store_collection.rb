class StoreCollection < ApplicationRecord
  belongs_to :retailer
  has_many :designer_orders
  has_many :store_products
  has_many :products, through: :store_products
end
