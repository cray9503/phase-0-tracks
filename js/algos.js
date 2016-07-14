// Iterate through each item of an array
// Find out the length of each item in array
// Compare each length and return the longest item

function longest_phrase(array) {
  var length_array = [];
  for (var i = 0; i < array.length; i++) {
    length_array.push(array[i].length);
  }
  var largest = 0;
  for (i = 0; i <= largest;i++){
    if (length_array[i] > largest) {
        var largest = length_array[i];
    }
  }
  console.log(array[length_array.indexOf(largest)]);
}


// (longest_phrase(['apple', 'pear', 'grapes']));
// (longest_phrase(["long phrase","longest phrase","longer phrase"]));


// Takes two objects and checks to see if the objects share at least one key-value pair.

function key_match(object_1, object_2) {

  var object1Keys = Object.keys(object_1);
  var object2Keys = Object.keys(object_2);

  var allObjectKeys = object1Keys.concat(object2Keys);
  var hasMatch = false;

  for (var i = 0; i < allObjectKeys.length; i++){
    var key = allObjectKeys[i];

    var keyInObject1 = (object1Keys.indexOf(key) !== -1);
    var keyInObject2 = (object2Keys.indexOf(key) !== -1);

    if ( keyInObject1 &&
         keyInObject2 &&
         (object_1[key] === object_2[key]) ) {

        hasMatch = true;

        break;
    }
  }

  return hasMatch;
}

console.log(key_match({name: "Steve", age: 54}, {name: "Tamir", age: 54}));
