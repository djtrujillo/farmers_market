require 'rails_helper'

describe NutritionixService do
  context "class methods" do
    let(:usda) { NutritionixService.new }
    it "initiates" do
      expect(usda).to be_a NutritionixService
    end
  end

  context "instance methods" do
    let(:nutrition) { NutritionixService.new.nutrients("tomato") }
    let(:instant) { NutritionixService.new.instant }
    it "#nutrition" do
      expect(nutrition).to be_a Hash
    end

  end
end
