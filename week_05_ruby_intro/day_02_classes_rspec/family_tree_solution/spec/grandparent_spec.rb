require_relative 'spec_helper'

describe Grandparent do

  before(:context) do
    @grandparent = Grandparent.new("marcia",60,"female")
  end

  after(:context) do
    Grandparent.family.pop
  end

  describe "Initialization" do
    it "is an instance of the Grandparent class" do
      expect(@grandparent).to be_instance_of(Grandparent)
    end
    it "is assigned a name" do
      expect(@grandparent.name).to eq("marcia")
    end
    it "is assigned an age" do
      expect(@grandparent.age).to eq(60)
    end
    it "is assigned a gender" do
      expect(@grandparent.gender).to eq("female")
    end
  end

  describe "class methods" do
    it "should have a way to access the family variable" do
      expect(Grandparent.family).to be_kind_of(Array)
    end
    it "should have a way to access the grandchildren" do
      expect(Grandparent.grandchildren).to be_kind_of(Integer)
    end
  end

  describe "Adding to the family" do
    it "gets added to the family" do
      @grandparent.addToFamily(@grandparent)
      p Grandparent.family
      expect(Grandparent.showFamily.length).to eq(1)
    end
  end

  describe "Show family" do
    it "Should return an array" do
      expect(Grandparent.showFamily).to be_kind_of(Array)
    end

    # BONUS! Loop over the array returned by Grandparent.showFamily and see
    # if the number of instance variables at each index is >= 3
    it "Should have at least three instance variables at every index of the array" do
      Grandparent.showFamily.each do |instance|
      expect(instance.instance_variables.length).to be >= 3
    end
    end
  end
end