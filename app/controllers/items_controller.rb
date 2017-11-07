class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    # @nutrion = NutritionInfoService.new.nutrition(@item.name)
  end


end
