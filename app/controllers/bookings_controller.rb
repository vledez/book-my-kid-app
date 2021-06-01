class BookingsController < ApplicationController

  def new
    @kid = Kid.find(params[:kid_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @kid = Kid.find(params[:kid_id])
    @booking.kid = @kid

    if @booking.save
    redirect_to kid_path(@kid)
    else
      render :new
    end
  end

private

 def booking_params
    params.require(:booking).permit(:need, :date, :hour, :kid_id, :user_id)
  end

end
