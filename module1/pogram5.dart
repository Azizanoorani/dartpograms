import 'dart:io';
void main(){
  print('Enter the base of a Triagnle : ');
  var base = int.parse(stdin.readLineSync()!);
  print('Enter the height of a Triagnle : ');
  var height = int.parse(stdin.readLineSync()!);

  var area=base*height;

  print('The Area of Triangle is: $area');

}