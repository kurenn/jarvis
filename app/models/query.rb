class Query < ApplicationRecord
  validates :content, presence: true
end
