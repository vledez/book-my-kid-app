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

  def generate
    @service = params[:need]
    @start = params[:starts_at]
    @end = params[:ends_at]
    @date = @start + " à " + @end
    @kid = Kid.find(params[:id])
    @booking = Booking.new(need: @service, reservation:@date, kid_id: @kid.id, user_id: current_user.id)
    if @booking.save
      redirect_to kid_path(@kid)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :kid_id)
  end

end
