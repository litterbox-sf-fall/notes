var Shape = function(side1, side2) {
  this.side1 = side1;
  this.side2 = side2 || side1;
};

Shape.prototype.area = function () {
    return this.side1 * this.side2 ;
  };
Shape.prototype.perimeter = function() {
    return((this.side1 + this.side2) * 2);
  };

var rectangle = new Shape(3, 4);
var square = new Shape(5);
