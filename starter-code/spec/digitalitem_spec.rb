require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    @digitalitem = DigitalItem.new("Generic Item",1.99) 
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@digitalitem).to be_instance_of(DigitalItem)
    end
    it "should inherit from item" do
      expect(DigitalItem).to be < Item
    end
  end

  describe "Accessors" do
    it "is assigned a name" do
      expect(@digitalitem.name).to eq("Generic Item")
    end
    it "is assigned a price" do
      expect(@digitalitem.price).to eq(1.99)
    end
    it "should be able to get quantity" do
      expect(@digitalitem.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @digitalitem.name="New Name"
      expect(@digitalitem.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @digittalitem.price = 1.99
      expect(@digitalitem.price).to eq(1.99)
    end
  end

  describe "Methods" do
    it "should always have a quantity of 1" do
      expect(@digitalitem).to eq(1)
    end
    it "should be able to sell items and not decrease quantity" do
      result = @item.sell 3
      expect(result).to eq(true)
      expect(@item.quantity).to eq(1)
    end
    it "should not increase on stock" do
      result = @digitalitem.stock(5)
      expect(@digitalitem.stock).to eq(true)
      expect(@digitalitem.stock).to eq(1)
    end
  end
end
