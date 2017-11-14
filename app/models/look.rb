class Look < ApplicationRecord
  belongs_to :collection
  belongs_to :designer
  has_many :look_products
  has_many :products, through: :look_products
end
