var fourColors = ["maroon", "teal", "true-blue", "salmon"];
var fourNames = ["killer","Demon", "Biter", "Spot"];

fourNames.push("Anne");
fourColors.push("Pink");
console.log(fourNames + " " + fourColors);

object = {};
for (i = 0; i < fourNames.length; i++ ){
  object[fourNames[i]] = fourColors[i];
}
console.log(object);


function Car(color, age) {
  this.color = color;
  this.age = age;

  this.drive = function(){ console.log("vrooom"); };
}

var porsh = new Car ("red", 10);
var prius = new Car ("blue", 2);
prius.drive();
