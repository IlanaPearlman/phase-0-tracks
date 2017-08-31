/*
split the string into an array
reverse the array
join the array into a string
*/

function stringReverse(string) {
  return string.split('').reverse().join('');
}

console.log(stringReverse('pants'));

/*
make empty new string
loop through the string from the back
take each letter and put it into a new string
return the new string
*/

function anotherStringReverse(string){
  var reversed = ''
  for (var i = string.length - 1; i >= 0; i--) {
    console.log(reversed);
    reversed = reversed + string[i];
  }
  return reversed;
}

console.log(anotherStringReverse("more"));