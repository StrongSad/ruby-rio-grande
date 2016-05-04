require_relative 'spec_helper'

require_relative '../lib/Song' 
require_relative '../lib/DigitalItem'  

describe Song do

  before(:context) do
    @song = Song.new("Movie", 2.50, "3 min", "Beach Boys")
  end

  #check initialization
  #check that it is an instance of Book
  describe "Initialization" do
    it "is an instance of the Movie class" do
      expect(@song).to be_instance_of(Song)
    end
    #check that it is an extended from Item
    it "inherits from/extended from DigitalItem" do
      expect(Song).to be < DigitalItem
    end
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get and set name" do
      @song.name = "New Title"
      expect(@song.name).to eq("New Title")
    end
    it "should be able to get and set price" do
      @song.price=10.00
      expect(@song.price).to eq(10.00)
    end
    it "should be able to get and set run time" do
      @song.run_time = "5 hours"
      expect(@song.run_time).to eq("5 hours")
    end
    it "should be able to get and set derector" do
      @song.artist = "Barrus"
      expect(@song.artist).to eq("Barrus")
    end
  end

  describe "Methods" do
    it "should always have quantity of 1" do
      expect(@song.quantity).to eq(1)
    end
    it "should be able to sell without decreasing quantity" do
      result = @song.sell 6
      expect(result).to eq(true)
      expect(@song.quantity).to eq(1)
    end
    it "quantity should remain the same when stocked" do
      result = @song.stock 3
      expect(result).to eq(true)
      expect(@song.quantity).to eq(1)
    end
  end
end
