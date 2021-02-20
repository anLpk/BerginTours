class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @user = current_user
    #All bookings made by user, present and past
    @user_bookings = Booking.where(user_id: @user.id)
    @user_past_bookings = []
    @user_past_bookings_hash = {}
    @user_current_bookings = []
    @user_current_bookings_hash = {}
    @my_tours_booked_hash = {}

    # My bookings in progress && My past bookings
    @user_bookings.each do | booking |
      if booking.end_date < Time.now + 1.day
        @user_past_bookings << booking
        @user_past_bookings_hash["#{booking.id}"] = Tour.where(id: booking.tour_id)
      else
        @user_current_bookings << booking
        @user_current_bookings_hash["#{booking.id}"] = Tour.where(id: booking.tour_id)
      end
    end

    #All my tours that are booked by other users
    @my_tours_booked = Booking.joins(:tour).where("tours.user_id" => current_user.id)
    @my_tours_booked.each do | booking |
      @my_tours_booked_hash["#{booking.id}"] = Tour.where(id: booking.tour_id)
    end
    # authorize @user
  end

  def home
  end
end
