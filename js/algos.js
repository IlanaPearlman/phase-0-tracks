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


getNumberOneToTen = function(){
  return Math.floor(Math.random() * 10) + 1;
}

getNumberZeroToTwentyFive = function(){
  return Math.floor(Math.random() * 25);
}

getRandomWord = function(){
  word = '';
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 0; i < getNumberOneToTen(); i++){
    word = word + alphabet[getNumberZeroToTwentyFive()];
  }
  return word;
}

buildStringsArray = function(length){
  arrayOfStrings = [];
  for (var i = 0; i < length; i += 1){
    arrayOfStrings.push(getRandomWord());
  }
  return arrayOfStrings;
}


