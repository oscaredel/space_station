class OrderProduct < ApplicationRecord
  belongs_to :store_product
  belongs_to :designer_order
end
