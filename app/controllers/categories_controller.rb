class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @nutrition = NutritionInfoService.new.nutrition_info(@category.title)
    @items = @category.items
  end

end
