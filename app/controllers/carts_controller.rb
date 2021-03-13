class CartsController < ApplicationController
  def show 
    @user = current_user
    @cart = Cart.find(params[:id])
  end
end
