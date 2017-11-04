class BasketsController < ApplicationController
      include ActionView::Helpers::TextHelper
  def index
    @items = @basket.item_and_quantity
  end

  def create
    item = Item.find(params[:item_id])
    @basket.add_item(item.id)
    session[:basket] = @basket.contents

    flash[:notice] = "You now have #{pluralize(@basket.count_of(item.id), item.name)}."
    redirect_back(fallback_location: root_path)
  end



end
