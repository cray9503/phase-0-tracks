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


(longest_phrase(['apple', 'pear', 'grapes']));
(longest_phrase(["long phrase","longest phrase","longer phrase"]));
