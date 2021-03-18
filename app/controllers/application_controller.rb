class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_user_cart
  
  def set_user_cart 
    @user_cart = user_signed_in? && current_user.carts.find_or_create_by(state: "open", user: current_user)
  end

  def after_sign_in_path_for(resource)
    session[:last_tour] || stored_location_for(resource) || root_path
  end
end
