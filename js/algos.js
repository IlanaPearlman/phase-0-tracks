/*
input 2 objects
iterate through the first object
return true if they contain at least one key value pair
else return false
*/

twoObjectComparison = function(obj1, obj2){
  for (var key in obj1){
    if (obj1.key == obj2.key) {
      return true;
    }
  }
  return false;
}

twoObjectComparison({name: "Steven", age: 54}, {name: "Tamir", age: 54});
twoObjectComparison({animal: "Dog", legs: 4}, {animal: "Dog", legs: 3});