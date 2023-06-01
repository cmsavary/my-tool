class BookingsController < ApplicationController
  before_action :set_tool, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.tool = @tool
    if @booking.save
      redirect_to tool_path(@tool), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to tool_path(@tool), notice: 'Booking was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_tool
    @tool = Tool.find(params[:tool_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
