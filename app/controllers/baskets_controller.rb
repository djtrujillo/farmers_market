class BasketsController < ApplicationController
  def index
    current_user.baskets.all
    # @baskets = Basket.all
  end

  def new
    basket = Basket.create(user_id: current_user.id)
    item_hash = @basket_cart.item_and_quantity
    basket.add(item_hash)
    @basket_cart.destroy
    flash[:success] = "Basket was successfully created"
    redirect_to basket_path(basket)
    # redirect_to carts_path(basket_id: basket.id), method: :post
  end

  def show
    @basket = Basket.find(params[:id])
  end


end
