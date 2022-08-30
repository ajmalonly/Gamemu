class BookingsController < ApplicationController
  before_action :set_bookings, only: :destroy
  before_action :set_games, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.game = @game
    if @booking.save
      redirect_to game_booking_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to game_path(@booking.game), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_game
    @game = Game.find(params[:game_id])
  end
end
