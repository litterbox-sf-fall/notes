require 'spec_helper'

describe Math do

  describe "Addition" do
    it "works" do
      expect(1 + 1).to eq(2)
    end
  end

  describe "Subtraction" do
    it "works" do
      expect(1 - 1).to eq(0)
    end
  end

  describe "something" do
    it "does something that passes" do
      expect(5).to eq(5)
    end

    it "does something that fails" do
      expect(5).to eq(3)
    end

    it "does something that is pending", :pending => true do
      expect(5).to be < 3
    end

    it "does something that is skipped", :skip => true do
      expect(5).to be < 3
    end
  end
end