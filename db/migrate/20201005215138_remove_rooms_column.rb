class RemoveRoomsColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :available, :boolean
  end
end
