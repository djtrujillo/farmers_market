require 'rails_helper'

describe NutritionInfoService do
  context "class methods" do
    let(:nutrition) { NutritionInfoService.new }
    it "initiates" do
      expect(nutrition).to be_a NutritionInfoService
    end
  end
  context "instance methods" do
    let(:nutrition_info) { NutritionInfoService.new.nutrition_info("tomato") }
    it "#nutrition_info" do
      expect(nutrition_info).to be_a Nutrition
      expect(nutrition_info).to be_a Object
    end
  end
end
