require_relative 'spec_helper' 
require_relative '../lib/Bluray'
require_relative '../lib/Item'

describe Bluray do

  before(:context) do
    @bluray = Bluray.new("A Tour of a Life: Jacob", 17.97, "3.79 hours", "Spike Lee", "ESPN")
  end

  #check initialization
  #check that it is an instance of Book
  describe "Initialization" do
    it "is an instance of the Bluray class" do
      expect(@bluray).to be_instance_of(Bluray)
    end
    #check that it is an extended from Item
    it "inherits from/extended from Item" do
      expect(Bluray).to be < Item
    end
  end

  #check getters and setters
  describe "accessors" do 
    it "is assigned a name" do
      expect(@bluray.name).to eq("A Tour of a Life: Jacob")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(17.97)
    end
    it "is assigned a play time" do
      expect(@bluray.run_time).to eq("3.79 hours")
    end
    it "should have a Director" do
      expect(@bluray.director).to eq("Spike Lee")
    end
    it "should have a producer" do 
      expect(@bluray.producer).to eq("ESPN")
    end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @bluray.stock 5
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @bluray.sell 6
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(2)
    end
  end

end
