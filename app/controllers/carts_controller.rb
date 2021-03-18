class CartsController < ApplicationController
  def show 
    @user = current_user
    @cart = Cart.find(params[:id])
  end

  def update 
    cart = Cart.find(params[:id])
  
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: cart.id,
        amount: cart.calculate_total_price,
        currency: 'usd',
        quantity: 1
      }],
      success_url: root_url,
      cancel_url: cart_url(cart)
    )
  
    cart.update(checkout_session_id: session.id)
    redirect_to new_cart_payment_path(cart)
  end
end
