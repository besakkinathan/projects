class ChangeRoomRateType < ActiveRecord::Migration[6.0]
  def change
    change_column :rooms, :room_type, :integer
  end
end
