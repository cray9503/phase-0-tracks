var colors = ["blue", "green", "yellow", "red"];
var names = ["John", "Bobby", "Ed", "Jared"];

colors.push("orange");
names.push("Sara");


function horse_values(array_1, array_2){
  var object = {};
  if (array_1.length === array_2.length) {
    for (var i = 0; i < array_1.length; i++) {
      object[array_1[i]] = array_2[i];
    }
  }
  return object;
}

console.log(horse_values(names, colors));




function Car(make, color, year){
  this.make = make;
  this.color = color;
  this.year = year;

  this.drive = function(){
    console.log("Driving!");
  }
}

var car_build_1 = new Car("Ford", "Silver", 2012);
console.log(car_build_1);
car_build_1.drive();
console.log("------");

var car_build_2 = new Car("Chevy", "White", 2014);
console.log(car_build_2);

var car_build_3 = new Car("Subaru", "Green", 2010);
console.log(car_build_3);
