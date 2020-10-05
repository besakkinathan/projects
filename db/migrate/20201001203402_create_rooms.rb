class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :no
      t.integer :hotel_id
      t.string :type
      t.decimal :rate, precision: 10, scale: 2
      t.boolean :available

      t.timestamps
    end
  end
end
