class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  helper_method :current_user
  before_action :set_cart, :set_basket

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def set_cart
    @cart ||= Cart.new(session[:cart])
  end

  def set_basket
    @basket ||= Basket.new(session[:basket])
  end

end
