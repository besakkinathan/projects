FactoryBot.define do
  factory :billing do
    booking_id { 1 }
    total_amount_paid { "9.99" }
    discount_rate { "9.99" }
    details { "MyText" }
  end
end
