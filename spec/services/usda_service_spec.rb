require 'rails_helper'

describe UsdaService do
  context "class methods" do
    let(:usda) { UsdaService.new }
    it "initiates" do
      expect(usda).to be_a UsdaService
    end
  end

  context "instance methods" do
    let(:ndbno) { UsdaService.new.find_ndbno("tomato") }
    let(:nutrition) { UsdaService.new.nutrition("11531") }
    it "#find_ndbno" do
      expect(ndbno).to eq("11531")
    end

    it "#nutrition" do
      expect(nutrition).to be_a Array
    end

  end
end
