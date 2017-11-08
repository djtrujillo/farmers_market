class NutritionInfoService

  def nutrition_info(name)
    nutrition_hash = NutritionixService.new.nutrients(name)
    Nutrition.new(nutrition_hash)
  end
end
