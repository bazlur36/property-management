require 'rails_helper'

RSpec.describe Asset, type: :model do
  describe "create asset" do
    assets_count = Asset.count
    it "should create a house correctly", focus: true do
      house = create(:house)
      expect(Asset.count).to eq(1)
    end

    it "should create a complex building correctly", focus: true do
      complex_building = create(:complex_building)
      expect(Asset.count).to eq(1)
    end

    it "should create a commercial unit correctly", focus: true do
      commercial_unit = create(:commercial_unit)
      expect(Asset.count).to eq(1)
    end

    it "should create a assets correctly", focus: true do
      house = create(:house)
      complex_building = create(:complex_building)
      commercial_unit = create(:commercial_unit)
      expect(Asset.count).to eq(3)
    end

  end
end
