class CartsController < ApplicationController
  def show 
    @user = current_user
    @cart = Cart.find(params[:id])

    if (@cart.calculate_total_price.to_i == 0)
      @cart.update(checkout_session_id: nil)
    else
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "Thanks for booking #{ @cart.id}",
        images: @cart.bookings.map do |booking|
          Cloudinary::Utils.cloudinary_url(booking.tour.photos[0].key)
        end,
        amount: @cart.calculate_total_price.to_i * 100,
        currency: 'usd',
        quantity: 1
      }],
      success_url: root_url,
      cancel_url: cart_url(@cart)
    )
    @cart.update(checkout_session_id: session.id)
    end
  end

  # def discount 
  #   @cart = Cart.find(params[:id])
  #   @cart.bookings { |booking| booking.update(calculate_total_price: booking.calculate_total_price * 0.75) }
  #   flash[:notice] = "You're discount code has been accepted"
  #   session[:discount] = true
  #   redirect_to @cart
  # end
end
