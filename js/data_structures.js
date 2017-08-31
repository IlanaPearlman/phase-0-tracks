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