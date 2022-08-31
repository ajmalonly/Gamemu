class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_game, only: [:new, :create]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.game = @game
    @booking.user = current_user
    if @booking.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
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
