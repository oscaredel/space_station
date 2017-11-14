class Product < ApplicationRecord
  belongs_to :collection
  belongs_to :designer
  has_many :look_products
  has_many :looks, through: :look_products
  has_many :store_products
  has_many :store_collections, through: :store_products
end
