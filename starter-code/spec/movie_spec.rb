require_relative 'spec_helper'

require_relative '../lib/Movie' 
require_relative '../lib/DigitalItem'  

describe EBook do

  before(:context) do
    @movie = Movie.new("Movie", 13, "2 hours", "Spike Lee", "ESPN")
  end

  #check initialization
  #check that it is an instance of Book
  describe "Initialization" do
    it "is an instance of the Movie class" do
      expect(@movie).to be_instance_of(Movie)
    end
    #check that it is an extended from Item
    it "inherits from/extended from DigitalItem" do
      expect(Movie).to be < DigitalItem
    end
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get and set name" do
      @movie.name = "New Title"
      expect(@movie.name).to eq("New Title")
    end
    it "should be able to get and set price" do
      @movie.price = 10.00
      expect(@movie.price).to eq(10.00)
    end
    it "should be able to get and set run time" do
      @movie.run_time = "5 hours"
      expect(@movie.run_time).to eq("5 hours")
    end
    it "should be able to get and set derector" do
      @movie.director = "Barrus"
      expect(@movie.director).to eq("Barrus")
    end
    it "should be able to get and set producer" do
      @movie.producer = "New produucer"
      expect(@movie.producer).to eq("New produucer")
    end
  end

  describe "Methods" do
    it "should always have quantity of 1" do
      expect(@movie.stock).to eq(1)
    end
    it "should be able to sell without decreasing quantity" do
      result = @movie.sell 6
      expect(result).to eq(true)
      expect(@movie.quantity).to eq(1)
    end
    it "quantity should remain the same when stocked" do
      result = @movie.stock 3
      expect(result).to eq(true)
      expect(@movie.quantity).to eq(1)
    end
  end
end
