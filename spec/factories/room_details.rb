FactoryBot.define do
  factory :room_detail do
    room_id { 1 }
    bed_type { "MyString" }
    view { false }
    amenities { "MyString" }
    text { "MyString" }
  end
end
