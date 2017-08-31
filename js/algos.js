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


/*
input 2 objects
iterate through the first object
return true if they contain at least one key value pair
else return false
*/

longestPhrase = function(arrayOfWords){
  longest = arrayOfWords[0];
  for (var i = 1; i < arrayOfWords.length; i += 1){
    if (arrayOfWords[i].length > longest.length) {
      longest = arrayOfWords[i];
    }
  }
  return longest;
}

test = longestPhrase(["long phrase","longest phrase","longer phrase"]);
console.log(test);

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

tenTimesTest = function(){
  for (var i = 0; i < 10; i += 1) {
    testArray = buildStringsArray(getNumberOneToTen());
    console.log(testArray);
    console.log("The longest phrase in that array is: " + longestPhrase(testArray));
  }
}

tenTimesTest();

