class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @bookings_from_other_users = Booking.where.not(user: current_user)
    @my_bookings = Booking.where(user: current_user)
  end
end
