require_relative 'spec_helper'
require_relative '../grandparent'

describe Grandparent do

  before(:context) do
    @grandparent = Grandparent.new("marcia",60,"female")
  end

  describe "Initialization" do
    it "is an instance of the Grandparent class" do

    end
    it "is assigned a name" do

    end
    it "is assigned an age" do

    end
    it "is assigned a gender" do

    end
  end

  describe "class methods" do
    it "should have a way to access the family variable" do

    end
    it "should have a way to access the grandchildren" do

    end
  end

  describe "Adding to the family" do
    it "gets added to the family" do


    end
  end

  describe "Show family" do
    it "Should return an array" do

    end

    # BONUS
    # Loop over the array returned by Grandparent.showFamily and see
    # if the number of instance variables at each index is >= 3
    it "Should have at least three instance variables at every index of the array" do


    end
  end
end