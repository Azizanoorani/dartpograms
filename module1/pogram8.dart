import 'dart:io';
void main(){
  print('Enter the marks of english: ');
  var english = int.parse(stdin.readLineSync()!);
  print('Enter the marks of Maths: ');
  var maths = int.parse(stdin.readLineSync()!);
  print('Enter the marks of Science: ');
  var science = int.parse(stdin.readLineSync()!);
  print('Enter the marks of Hindi: ');
  var hindi = int.parse(stdin.readLineSync()!);
  print('Enter the marks of Socail science: ');
  var socailscience = int.parse(stdin.readLineSync()!);


  var total = english+maths+science+hindi+socailscience;
  var average = total/500;
  var percentage = (total / 500.0) * 100;

  print('The Toatl marks is: $total');
  print('The Average is : $average');
  print('The Percentage is : $percentage');

}