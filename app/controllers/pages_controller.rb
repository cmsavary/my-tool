class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @bookings_from_other_users = current_user.tools.flat_map { |tool| tool.bookings }
    @my_bookings = Booking.where(user: current_user)
  end
end
