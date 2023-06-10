class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  def dashboard
    @bookings_from_other_users = current_user.tools.flat_map { |tool| tool.bookings }
    @my_bookings = Booking.where(user: current_user)
  end

  def home
    if params[:query].present?
      sql_subquery = "name ILIKE :query"
      @tools = Tool.where(sql_subquery, query: "%#{params[:query]}%")
    else
      @tools = Tool.all
    end
  end

end
