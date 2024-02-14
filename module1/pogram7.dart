import 'dart:io';
void main(){
  print('Enter the Tempature: ');
  var tempature = int.parse(stdin.readLineSync()!);


  var Fahrenheit=tempature-32*5/9;

  print('The degree centigrade to Fahrenheit is: $Fahrenheit');

}