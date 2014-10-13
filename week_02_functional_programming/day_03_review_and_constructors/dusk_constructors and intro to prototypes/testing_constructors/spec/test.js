var House = require("../constructor");
var expect = require("chai").expect;

var myHouse;

describe("House", function(){

  describe("properties", function(){

    beforeEach(function(){
      myHouse = new House(2000,3.5,2);
    });

    it("should be two thousand square feet", function(){
      expect(2000).to.be.equal(myHouse.sqFeet);
    });
    it("should have three and a half bathrooms", function(){
      expect(3.5).to.be.equal(myHouse.bathrooms);
    });
    it("should have two bedrooms", function(){
      expect(2).to.be.equal(myHouse.bedrooms);
    });
    it("should be red", function(){
      expect("red").to.be.equal(myHouse.color);
    });
    it("should have an empty neighborhood", function(){
      expect(myHouse.neighborhood).to.be.empty;
    });
    it("should be a small house", function(){
      expect(myHouse.size(myHouse.bedrooms)).to.equal("Small");
    });
  });

  describe("my neighborhood", function(){
    myHouse = new House(10,3.5,2);

    it("should not add my House to the neighborhood more than once ", function(){
      myHouse.addToNeighborhood();
      myHouse.addToNeighborhood();
      myHouse.addToNeighborhood();
      // this should still be one so that we don't have dupes!
      expect(1).to.be.equal(myHouse.neighborhood.length);
    });
});
});


