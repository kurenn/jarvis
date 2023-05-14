class Buyer < ApplicationRecord
  has_many :orders, inverse_of: :buyer, dependent: :destroy
end
