require 'spec_helper'

describe Book do

before :each do
    @book = Book.new "Great Gatsby", "Fitzy", "classic"
end

  describe "#new" do
      it "takes three parameters and returns a Book object" do
          expect(@book).to be_instance_of Book
      end
  end

  describe "#title" do
      it "returns the correct title" do
          expect(@book.title).to eq("Great Gatsby")
      end
  end
  describe "#author" do
      it "returns the correct author" do
          expect(@book.author).to eq("Fitzy")
      end
  end
  describe "#category" do
      it "returns the correct category" do
          expect(@book.category).to eq("classic")
      end
  end

  describe "bookCount" do
      it "should keep counting books" do
      expect(Book.count).to eq(5)
      end
  end

end