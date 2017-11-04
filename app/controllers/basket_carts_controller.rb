class BasketCartsController < ApplicationController
      include ActionView::Helpers::TextHelper
  def index
    @items = @basket_cart.item_and_quantity
  end

  def create
    item = Item.find(params[:item_id])
    @basket_cart.add_item(item.id)
    session[:basket_cart] = @basket_cart.contents
    flash[:notice] = "You now have #{pluralize(@basket_cart.count_of(item.id), item.name)}."
    redirect_back(fallback_location: root_path)
  end



end
