// Iterate through each item of an array
// Find out the length of each item in array
// Compare each length and return the longest item

function longest_phrase(array) {
  var length_array = []
  for (var i = 0; i < array.length; i++)
    length_array.push(array[i].length);
  if (length_array[0] < length_array[1] > length_array[2]) {
    return length_array[1]
  }
  else if (length_array[1] < length_array[0] > length_array[2]) {
    return length_array[0]
  }
  else {
    return length_array[2]
  }
}

console.log(longest_phrase(["appple", "pear", "lemon"]))
