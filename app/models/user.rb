class User < ApplicationRecord
  has_many :bookings
  has_many :rooms, through: :bookings
  scope :booking_info, -> (id) { where(id: id).pluck("bookings.checkin_date","bookings.no_of_guests","rooms.room_type","rooms.no") }
end
