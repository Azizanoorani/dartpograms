import 'dart:io';

void main() {
  
  print("Enter Number : ");
  var number = int.parse(stdin.readLineSync()!);

  int lastnumber=number%10;
  int firstnumber=int.parse(number.toString()[0]);

  int sum = firstnumber+lastnumber;
  print('The addition of first and last number is : $sum');
}
