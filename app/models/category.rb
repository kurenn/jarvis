class Category < ApplicationRecord
  has_many :products, inverse_of: :category, dependent: :destroy
end
