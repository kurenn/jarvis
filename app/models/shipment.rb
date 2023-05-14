class Shipment < ApplicationRecord
  belongs_to :order, inverse_of: :shipments
  belongs_to :product, inverse_of: :shipments
end
