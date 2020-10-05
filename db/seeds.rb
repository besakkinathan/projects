# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hotel = Hotel.create(name: "Bellagio Hotel", address: "3600 S Las Vegas Blvd, Las Vegas, NV 89109")
rooms = Room.create([
                     {no: "A01", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "A02", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "A03", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "A04", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "A05", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "B01", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "B02", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "B03", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "B04", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "B05", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "C01", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "C02", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "C03", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "C04", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "C05", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "D01", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "D02", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "D03", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "D04", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "D05", hotel_id: hotel.id, room_type: 0, rate: 100.00 },
                     {no: "A06", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "A07", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "A08", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "A09", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "A10", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "B06", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "B07", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "B08", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "B09", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "B10", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "C06", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "C07", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "C08", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "C09", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "C10", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "D06", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "D07", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "D08", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "D09", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "D10", hotel_id: hotel.id, room_type: 1, rate: 150.00 },
                     {no: "D11", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "D12", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "D13", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "D14", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "D15", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "D16", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "D17", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "D18", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "D19", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "D20", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "E01", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "E02", hotel_id: hotel.id, room_type: 2, rate: 175.00 },
                     {no: "E03", hotel_id: hotel.id, room_type: 3, rate: 200.00 },
                     {no: "E04", hotel_id: hotel.id, room_type: 3, rate: 200.00 },
                     {no: "E05", hotel_id: hotel.id, room_type: 3, rate: 200.00 },
                     {no: "E06", hotel_id: hotel.id, room_type: 3, rate: 200.00 },
                     {no: "E07", hotel_id: hotel.id, room_type: 3, rate: 200.00 },
                     {no: "E08", hotel_id: hotel.id, room_type: 3, rate: 200.00 },
                     {no: "E09", hotel_id: hotel.id, room_type: 3, rate: 200.00 },
                     {no: "E10", hotel_id: hotel.id, room_type: 3, rate: 200.00 }
                    ])
bed_type = 0
view = false
amenities = ""
rooms.each_with_index  do |room, i|
  if i <= 19
    bed_type = 2
    view = false
    amenities = ""
  elsif i > 19 && i <= 39
    bed_type = 2
    view = true
    amenities = ""
  elsif i > 39 && i <= 51
    bed_type = 1
    view = true
    amenities = ""
  else
    bed_type = 1
    view = true
    amenities = "Gym"
  end
  RoomDetail.create(room_id: room.id, bed_type: bed_type, view: view, amenities: amenities)
end

User.create(first_name: "Bala", last_name: "kannan", password_digest: "", email: "ebalakannan@gmail.com", phone: "3108041017", address: "111 ernest ave, la")

#Booking.create(user_id: 1, room_id: 8, checkin_date: "2020-10-14", checkout_date: "2020-10-17", no_of_guests: 3)
