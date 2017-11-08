require 'rails_helper'

describe Nutrition do
  let(:nutrition) { Nutrition.new({serving_qty: 1, serving_weight_grams: 1, nf_calories: 1, nf_total_fat: 1, nf_saturated_fat: 1, nf_cholesterol: 1, nf_sodium: 1, nf_total_carbohydrate: 1, nf_dietary_fiber: 1, nf_sugars: 1, nf_protein: 1, nf_potassium: 1}) }
  context "class methods" do
    it "initiates" do
      expect(nutrition).to be_a Nutrition
    end
  end
  context "instance methods" do
    it "has instance variables" do
      expect(nutrition.serving_quantity).to eq(1)
      expect(nutrition.cholesterol).to eq(1)
      expect(nutrition.sodium).to eq(1)
      expect(nutrition.carbohydrates).to eq(1)
    end
  end
end
