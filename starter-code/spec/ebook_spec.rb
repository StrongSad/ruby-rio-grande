require_relative 'spec_helper'

require_relative '../lib/EBook' 
require_relative '../lib/DigitalItem'  

describe EBook do

  before(:context) do
    @ebook = EBook.new("Another History of Jacob", 13, 12000, "Jacob K Barrus")
  end

  #check initialization
  #check that it is an instance of Book
  describe "Initialization" do
    it "is an instance of the EBook class" do
      expect(@ebook).to be_instance_of(EBook)
    end
    #check that it is an extended from Item
    it "inherits from/extended from DigitalItem" do
      expect(EBook).to be < DigitalItem
    end
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get and set name" do
      @ebook.name="New Title"
      expect(@ebook.name).to eq("New Title")
    end
    it "should be able to get and set price" do
      @ebook.price=10.00
      expect(@ebook.price).to eq(10.00)
    end
    it "should be able to get and set pages" do
      @ebook.pages=34
      expect(@ebook.pages).to eq(34)
    end
    it "should be able to get and set author" do
      @ebook.author="New Author"
      expect(@ebook.author).to eq("New Author")
    end
  end

  describe "Methods" do
    it "should always have quantity of 1" do
      expect(@ebook.quantity).to eq(1)
    end
    it "should be able to sell without decreasing quantity" do
      result = @ebook.sell 6
      expect(result).to eq(true)
      expect(@ebook.quantity).to eq(1)
    end
    it "quantity should remain the same when stocked" do
      result = @ebook.stock 3
      expect(result).to eq(true)
      expect(@ebook.quantity).to eq(1)
    end
  end
end
