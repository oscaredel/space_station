class DesignerOrder < ApplicationRecord
  belongs_to :store_collection
  has_many :order_products, dependent: :destroy
end
