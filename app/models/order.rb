class Order < ApplicationRecord
  belongs_to :buyer, inverse_of: :orders
  has_many :shipments, inverse_of: :order, dependent: :destroy
  has_many :products, through: :shipments

  def calculate_total
    self.total = products.sum(:price)
    save
  end
end
