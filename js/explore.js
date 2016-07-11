// Iterate through the string starting at the end and working backwards
// Add the current character to a new string until all characters have been added to new string


function reverse(str) {
  var new_string = '';
  for (var i = str.length - 1; i >= 0; i--)
    new_string += str[i];
  return new_string;
}

console.log(reverse("Bootcamp"))
console.log(reverse("Superman"))

if (reverse("Coffee").length == 6) {
  console.log(reverse("Coffee") + " " + "is 6 characters!")
}
else {
  console.log(reverse("Coffee") + "is not 6 characters!")
}
