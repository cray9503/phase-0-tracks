// Longest phrase function ----------

function longestPhrase(array) {
  var lengthArray = [];
  for (var i = 0; i < array.length; i++) {
    lengthArray.push(array[i].length);
  }
  var largest = 0;
  for (i = 0; i <= largest;i++){
    if (lengthArray[i] > largest) {
        var largest = lengthArray[i];
    }
  }
  console.log(array[lengthArray.indexOf(largest)]);
}

// Mathcking key-value function ----------

function keyMatch(object_1, object_2) {

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

function arrayGenerator(numberOfItems) {
  var itemArray = [];
  var possible = "abcdefghijklmnopqrstuvwxyz";

  for (var i = 0; i < numberOfItems; i++) {
    var itemLength = Math.floor((Math.random() * 10) + 1);
    var randomString = '';
    var possible = "abcdefghijklmnopqrstuvwxyz";
      for ( var x = 0; x < itemLength; x++ ) {
       randomString += possible.charAt(Math.floor(Math.random() * possible.length));
      }
    itemArray.push(randomString);
  }
  return itemArray;
}

// Driver code -----------

for (var i = 0; i < 10; i++) {
  randomArray = arrayGenerator(3);
  longestPhrase(randomArray);
}


// (longestPhrase(['apple', 'pear', 'grapes']));
// (longestPhrase(["long phrase","longest phrase","longer phrase"]));


// console.log(keyMatch({name: "Steve", age: 54}, {name: "Tamir", age: 54}));
