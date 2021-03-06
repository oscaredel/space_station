class Product < ApplicationRecord
  belongs_to :collection
  belongs_to :designer
  has_many :look_products, dependent: :destroy
  has_many :looks, through: :look_products
  has_many :store_products, dependent: :destroy
  has_many :store_collections, through: :store_products
  has_attachments :photos, maximum: 2
end
