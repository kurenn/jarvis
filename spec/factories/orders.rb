FactoryBot.define do
  factory :order do
    product { nil }
    buyer { nil }
    total { "9.99" }
    shipped_at { "2023-05-14 22:28:17" }
  end
end
