import 'dart:io';
 
void main(){
    //read number from user
    print('Enter The Marks of English : ');
    var english = int.parse(stdin.readLineSync()!);
     print('Enter The Marks of Maths : ');
    var maths = int.parse(stdin.readLineSync()!);
     print('Enter The Marks of Science : ');
    var science = int.parse(stdin.readLineSync()!);
     print('Enter The Marks of Hindi : ');
    var hindi = int.parse(stdin.readLineSync()!);
     print('Enter The Marks of Socail Science : ');
    var socailscience = int.parse(stdin.readLineSync()!);
    
   var total=english+maths+science+hindi+socailscience;
   var percentage=total/500;
   print("This is the percentage : $percentage");

   if (percentage > 75) {
    print("Distinction");
  } else if (percentage > 60 && percentage <= 75) {
    print("firstclass");
  } else if (percentage > 50 && percentage <= 60) {
    print("second class");
  } else if (percentage > 35 && percentage <= 50) {
    print("pass class");
  } else {
    print("fail");
  }
}