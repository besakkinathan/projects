class ChangeBookingsColumnNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :bookings, :user_id, false
    change_column_null :bookings, :room_id, false
    change_column_null :bookings, :checkin_date, false
    change_column_null :bookings, :checkout_date, false
  end
end
