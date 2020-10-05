class Room < ApplicationRecord
  enum room_type: [ :Deluxe, :Luxury, :LuxurySuite, :PresidentialSuite ]
  has_many :bookings
  has_many :users, through: :bookings
  has_one :room_detail

  scope :by_type, ->(type) { where(room_type: type) if type.present? }


  def self.available_by_date(start_date, end_date)
    where.not(id: Booking.booked_rooms_by_date(start_date,end_date))
  end

end
