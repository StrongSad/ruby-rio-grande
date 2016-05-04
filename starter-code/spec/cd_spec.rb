require_relative 'spec_helper'
require_relative '../lib/Cd'

 
describe Cd do

  before(:context) do
    @cd = Cd.new("Audio Compendium of Jacob", 12.52, 17, "NWA", "91.5 minutes")
  end

  #check initialization
  #check that it is an instance of Book
  describe "Initialization" do
    it "is an instance of the Book class" do
      expect(@cd).to be_instance_of(Cd)
    end
    #check that it is an extended from Item
    it "inherits from/extended from Item" do
      expect(Cd).to be < Item
    end
  end

  #check getters and setters
  describe "accessors" do 
    it "is assigned a name" do
      expect(@cd.name).to eq("Audio Compendium of Jacob")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(12.52)
    end
    it "should have some tracks" do
      expect(@cd.tracks).to eq(17)
    end
    it "should have an artist" do
      expect(@cd.artist).to eq("NWA")
    end
    it "is assigned a run time" do
      expect(@cd.run_time).to eq("91.5 minutes")
    end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @cd.stock 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @cd.sell 6
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @cd.sell 3
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(2)
    end
  end
end
