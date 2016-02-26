var faker = require('faker');
//populate students_parents
var many = function () {
  var j = 0;
  for (var i = 1; i < 49; i++) {
    if (i % 2 === 0) {
      console.log("( " + (j+1) + ", " + i + "),");
      j++;
    } else
    console.log("( " + (j+1) + ", " + i + "),");
  }
};

//populate students_classes
var many2 = function () {

  var sect1ID = 1;//class id # section 1
  var sect2ID = 2;//class id # section 2

  for (var i = 1; i < 25; i++) {//var is student id#

    //First half of the students will always be in sect 1
    if(i < 13) {
      for (var j = 1; j < 6; j++) {
        console.log("( " + i + ", " + sect1ID + "),");
        sect1ID +=2;
      }
    } else {//Second half of student will always be in sect 2
      for (var j = 1; j < 6; j++) {
        console.log("( " + i + ", " + sect2ID + "),");
      sect2ID +=2;
      }
    }
    //Initialize for next student in next iteration
    sect1ID = 1;
    sect2ID = 2;

  }
};

many2();

//many();