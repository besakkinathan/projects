class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  attr_accessor :room_type

  validate :date_validity
  validates :no_of_guests, presence: true
  validates :room_type, presence: true, on: :create

  scope :booked_rooms_by_date, ->(start_date, end_date) { where("checkin_date < ? AND checkout_date > ?", end_date, start_date).pluck(:room_id) }

  def date_validity
    if is_format_errors_exist?
      return true
    elsif Date.today > checkin_date.to_date
      errors.add(:checkin_date, "should be equal or greater than today's date")
    elsif Date.today + 6.months < checkout_date.to_date
      errors.add(:checkout_date, "should be within 6 months")
    elsif checkout_date.to_date < checkin_date.to_date
      errors.add(:checkout_date, "should be greater than checkout date")
    end
  end

  def is_format_errors_exist?
    orig_checkin_date = checkin_date_before_type_cast
    orig_checkout_date = checkout_date_before_type_cast
    errors.add(:checkin_date, "can't be blank") if orig_checkin_date.blank?
    errors.add(:checkout_date, "can't be blank") if orig_checkout_date.blank?
    if errors[:checkin_date].blank? && orig_checkin_date.is_a?(String) && orig_checkin_date.match(/\d{4}-\d{2}-\d{2}/).nil?
      errors.add(:checkin_date, "please enter in the format yyyy-mm-dd")
    end
    if errors[:checkout_date].blank? && orig_checkin_date.is_a?(String) && orig_checkout_date.match(/\d{4}-\d{2}-\d{2}/).nil?
      errors.add(:checkout_date, "please enter in the format yyyy-mm-dd")
    end
    errors.present? ? true : false
  end
end
