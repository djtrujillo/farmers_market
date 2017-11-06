class NutrtionInfoService

  def nutrition_info(name)
    item_ndbno = UsdaService.new.find_ndbno(name)
    nutrition_info_array = UsdaService.new.nutrition(item_ndbno)
    nutrition_info_array.map do |nutrition_info|
      Nutrition.new(nutrition)
    end
  end
end
