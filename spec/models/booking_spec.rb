require 'rails_helper'

RSpec.describe Booking, type: :model do
  context 'presence validations' do
    it "validate no of guests" do
      booking = FactoryBot.build(:booking, no_of_guests: nil)
      expect(booking).to_not be_valid
    end
  end

  context 'date validations' do
    let(:user) { FactoryBot.create(:user) }
    let(:hotel) { FactoryBot.create(:hotel) }
    let(:room) { FactoryBot.create(:room, hotel_id: hotel.id) }

    it "invalidate date - checkin date chackout date with nil value " do
      booking = FactoryBot.build(:booking, checkin_date: nil, checkout_date: nil, user: user, room: room, room_type: 1)
      expect(booking).to_not be_valid
      expect(booking.errors[:checkin_date]).to include("can't be blank")
      expect(booking.errors[:checkout_date]).to include("can't be blank")
    end

    it "invalidate date - checkin date specified in invalid format " do
      booking = FactoryBot.build(:booking, checkin_date: "12122020", checkout_date: "2020-11-05", user: user, room: room, room_type: 1)
      expect(booking).to_not be_valid
      expect(booking.errors[:checkin_date]).to include("please enter in the format yyyy-mm-dd")
    end

    it "invalidate date - checkin date greater than checkout date " do
      booking = FactoryBot.build(:booking, checkin_date: "2020-11-06", checkout_date: "2020-11-05", user: user, room: room, room_type: 1)
      expect(booking).to_not be_valid
      expect(booking.errors[:checkout_date]).to include("should be greater than Check in Date")
    end

    it "invalidate date - checkout date greater than six months from now " do
      booking = FactoryBot.build(:booking, checkin_date: "2021-11-05", checkout_date: "2021-11-08", user: user, room: room, room_type: 1)
      expect(booking).to_not be_valid
      expect(booking.errors[:checkout_date]).to include("should be smaller than 6 months")
    end
  end

  context 'test the scopes' do
    let(:user) { FactoryBot.create(:user) }
    let(:hotel) { FactoryBot.create(:hotel) }
    let!(:room1) { FactoryBot.create(:room, hotel_id: hotel.id, no: "1A") }
    let!(:room2) { FactoryBot.create(:room, hotel_id: hotel.id, no: "2A") }
    let!(:room3) { FactoryBot.create(:room, hotel_id: hotel.id, no: "3A") }

    it "checks the booked rooms" do
      booking = FactoryBot.create(:booking, checkin_date: "2020-12-10", checkout_date: "2020-12-14", user: user, room: room1, room_type: 1)
      room_ids = Booking.booked_rooms_by_date("2020-12-11", "2020-12-13")
      expect(room_ids).to include(booking.room.id)
    end
  end
end
