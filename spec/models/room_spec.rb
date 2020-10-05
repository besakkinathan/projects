require 'rails_helper'

RSpec.describe Room, type: :model do
  context 'room Availablility' do
    let(:user) { FactoryBot.create(:user) }
    let(:hotel) { FactoryBot.create(:hotel) }
    let!(:room1) { FactoryBot.create(:room, hotel_id: hotel.id, no: "1A") }
    let!(:room2) { FactoryBot.create(:room, hotel_id: hotel.id, no: "2A") }
    let!(:room3) { FactoryBot.create(:room, hotel_id: hotel.id, no: "3A") }
    let!(:booking1) { FactoryBot.create(:booking, checkin_date: "2020-12-10", checkout_date: "2020-12-14", user: user, room: room1, room_type: 1) }

    it "returns the available rooms for the date" do
      room = Room.available_by_date("2020-12-10", "2020-12-12")
      expect(room.ids).to include(room2.id)
      expect(room.ids).to include(room3.id)
      expect(room.ids).to_not include(room1.id)
    end
  end
end
