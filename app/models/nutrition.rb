class Nutrition
  attr_reader :serving_quantity,
              :serving_weight,
              :calories,
              :total_fat,
              :sat_fat,
              :cholesterol,
              :sodium,
              :carbohydrates,
              :fiber,
              :sugar,
              :protein,
              :potassium

  def initialize(nutrition_hash)
    @serving_quantity = nutrition_hash[:serving_qty]
    @serving_weight = nutrition_hash[:serving_weight_grams]
    @calories = nutrition_hash[:nf_calories]
    @total_fat = nutrition_hash[:nf_total_fat]
    @sat_fat = nutrition_hash[:nf_saturated_fat]
    @cholesterol = nutrition_hash[:nf_cholesterol]
    @sodium = nutrition_hash[:nf_sodium]
    @carbohydrates = nutrition_hash[:nf_total_carbohydrate]
    @fiber = nutrition_hash[:nf_dietary_fiber]
    @sugar = nutrition_hash[:nf_sugars]
    @protein = nutrition_hash[:nf_protein]
    @potassium = nutrition_hash[:nf_potassium]
  end

end
