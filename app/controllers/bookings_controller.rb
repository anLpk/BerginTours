class BookingsController < ApplicationController
  before_action :make_booking, only: [:show, :edit, :update, :destroy]

  def new
    @tour = Tour.find(params[:tour_id])
    @booking = Booking.new
  end

  def create
    @tour = Tour.find(params[:tour_id])
    @booking = Booking.new(booking_params)
    @booking.tour = @tour
    @booking.cart = @user_cart
    if @booking.save
      redirect_to cart_path(@user_cart)
    else

      render :new
    end
  end

  def edit
    @tour = Tour.find(params[:tour_id])
  end

  def update
    @tour = Tour.find(params[:tour_id])
    if @booking.update(booking_params)
    redirect_to tour_booking_path
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy
    redirect_to @booking.cart
  end

  private

  def make_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:first_name, :last_name, :number_of_adult, :number_of_children, :number_of_infant, :start_date, :mobile_number, :language, :total_price)
  end
end
