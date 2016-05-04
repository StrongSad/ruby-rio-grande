require_relative 'spec_helper'

require_relative '../lib/Book' 
require_relative '../lib/Item'  

describe Book do

  before(:context) do
    @book = Book.new("A History of Jacob", 27.39, 1700, "Jacob Barrus")
  end

  #check initialization
  #check that it is an instance of Book
  describe "Initialization" do
    it "is an instance of the Book class" do
      expect(@book).to be_instance_of(Book)
    end
    #check that it is an extended from Item
    it "inherits from/extended from Item" do
      expect(Book).to < Item
    end
  end

  #check getters and setters
  describe "accessors" do 
    it "is assigned a name" do
      expect(@book.name).to eq("A History of Jacob")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(27.39)
    end
    it "is assigned a page quantity" do
      expect(@book.pages).to eq(1700)
    end
    it "should have an author" do
      expect(@book.author).to eq("Jacob Barrus")
    end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @book.stock 5
      expect(result).to eq(true)
      expect(@book.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @book.sell 6
      expect(result).to eq(false)
      expect(@book.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @book.sell 3
      expect(result).to eq(true)
      expect(@book.quantity).to eq(2)
    end
  end
end
