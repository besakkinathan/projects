class Api::V1::RoomsController < ApplicationController
  def index
    @rooms = Room.available_by_date(search_params[:checkin_date], search_params[:checkout_date]).by_type(search_params[:room_type])
    render json: @rooms
  end

  private

  def search_params
    params.permit(
        :checkin_date,
        :checkout_date,
        :room_type
    )
  end


end
