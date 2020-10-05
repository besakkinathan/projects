FactoryBot.define do
  factory :booking do
    user_id { 1 }
    room_id { 1 }
    checkin_date { "2020-10-01" }
    checkout_date { "2020-10-01" }
    no_of_guests { 1 }
  end
end
