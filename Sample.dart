import 'dart:io';

void main(){
  var name;
  print("Enter your name here ");
  name = stdin.readLineSync()!;
  var name1 = name.reversed;
  print(name1);
}