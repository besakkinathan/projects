class CreateRoomDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :room_details do |t|
      t.integer :room_id
      t.integer :bed_type
      t.boolean :view
      t.text :amenities

      t.timestamps
    end
  end
end
