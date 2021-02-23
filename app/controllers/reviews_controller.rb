class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]
  before_action :set_booking, only: [:new, :create]

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    # authorize @review
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @tour = @booking.tour
    @review.user = current_user
    # authorize @tour
    if @review.save
      redirect_to tour_path(@tour)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end
  
  def review_params
    params.require(:review).permit(:title, :rating, :content)
  end
end
