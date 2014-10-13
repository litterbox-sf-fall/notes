function House(sqFeet, bathrooms, bedrooms) {
  this.sqFeet = sqFeet;
  this.bathrooms = bathrooms;
  this.bedrooms = bedrooms;
}
House.prototype.color = "red";

House.prototype.neighborhood = [];

House.prototype.size = function(bedrooms){

  bedrooms = Math.round(bedrooms);

  switch (bedrooms){
    case 1:
      type = "Studio";
      break;
    case 2:
      type = "Small";
      break;
    case 3:
      type = "Medium";
      break;
    case 4:
      type = "Large";
      break;
    }
    return type;
  };

House.prototype.addToNeighborhood = function(){
  if(House.prototype.neighborhood.indexOf(this) === -1){
    House.prototype.neighborhood.push(this);
  }
};

module.exports=House;