class Collection < ApplicationRecord
  belongs_to :designer
  has_many :looks, dependent: :destroy
  has_many :products, dependent: :destroy
end
