class Api::V1::UsersController < ApplicationController

  def bookings
    @bookings = User.joins(:bookings,:rooms).booking_info(params[:id])
    render json: @bookings
  end
end
