class RoomDetail < ApplicationRecord
  enum bed_type: ["Full", "King", "Queen", "Twin"]
  belongs_to :room
end
