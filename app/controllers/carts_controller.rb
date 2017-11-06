class CartsController < ApplicationController
    include ActionView::Helpers::TextHelper
  def index
    @baskets = @cart.basket_and_quantity
  end

  def create
    basket = Basket.find(params[:basket_id])
    @cart.add_basket(basket.id)
    session[:cart] = @cart.contents
    flash[:notice] = "You now have #{pluralize(@cart.count_of(basket.id), basket)} in your cart."
    redirect_to carts_path
  end

end
