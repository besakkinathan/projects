class BookingsController < ApplicationController
  before_action :set_user, only: [:create, :index]

  def index
    @bookings = Booking.includes(:room)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    rooms = Room.available_by_date(booking_params[:checkin_date], booking_params[:checkout_date]).by_type(booking_params[:room_type])
    if rooms.present?
      @booking = Booking.create(user_id: @user.id, room_id: rooms.first.id, checkin_date: booking_params[:checkin_date], checkout_date: booking_params[:checkout_date], no_of_guests: booking_params[:no_of_guests], room_type: booking_params[:room_type])
      if @booking.valid?
        redirect_to booking_path(@booking)
      else
        flash[:errors] = @booking.errors.full_messages
        redirect_to new_booking_path(@booking)
      end
    else
      flash[:errors] = ["Sorry Rooms are not Available for this Date and Type."]
      redirect_to new_booking_path(@booking)
    end
  end

  private

  def set_user
    @user = User.find_by(id: 1)# fixed user
  end

  def booking_params
    params.require(:booking).permit(:checkin_date, :checkout_date, :no_of_guests, :room_type, :user_id, :room_id)
  end


end
