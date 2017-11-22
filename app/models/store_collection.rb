class StoreCollection < ApplicationRecord
  belongs_to :retailer
  has_many :designer_orders, dependent: :destroy
  has_many :store_products, dependent: :destroy
  has_many :products, through: :store_products
  validates :products, uniqueness: true
end
