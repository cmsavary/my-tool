class BookingsController < ApplicationController
  before_action :set_tool, only: %i[new create]
  before_action :set_booking, only: %i[edit update]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.tool = @tool
    @booking.user = current_user
    @booking.status = "pending"
    if @tool.user == current_user
      redirect_to tools_path, alert: "You cannot book your own tool!"
    elsif @booking.save
      redirect_to tools_path, notice: "booked!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    # @booking.status = booking_params[:accept] == 'true' ? 'accepted' : 'rejected'

    if booking_params[:accept] == 'true'
      @booking.status = 'accepted'
    elsif booking_params[:accept] == 'false'
      @booking.status = 'rejected'
    end

    if @booking.save
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :accept)
  end
end
