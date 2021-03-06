class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:tag].present?
      @tours = Tour.tagged_with(params[:tag])
    else
      @tours = Tour.all
    end
  end

  def show
    @tours = Tour.all
    @tour = Tour.find(params[:id])
    @review = Review.new
    # @booking = Booking.where('id NOT IN (SELECT DISTINCT(booking_id) FROM reviews)').where(tour: @tour).find_by(user: current_user)
    session[:last_tour] = tour_path(@tour)
    @booking = Booking.left_outer_joins(:cart, :review).find_by(carts: {user: current_user}, reviews: {id: nil})
    # raise
    @related_tours = @tour.find_related_tags
  end

  private

  def tour_params
    params.require(:tour).permit(:tag_list, :title, :description, :duration, :tag_text, :group_size, :price, photos: [])
  end
end
