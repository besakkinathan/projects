class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :room_id
      t.date :checkin_date
      t.date :checkout_date
      t.integer :no_of_guests

      t.timestamps
    end
  end
end
