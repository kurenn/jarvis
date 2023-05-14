class Product < ApplicationRecord
  belongs_to :category, inverse_of: :products
  has_many :shipments, inverse_of: :product, dependent: :destroy
  has_many :orders, through: :shipments
end
