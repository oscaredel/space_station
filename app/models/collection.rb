class Collection < ApplicationRecord
  belongs_to :designer
  has_many :looks
  has_many :products
end
