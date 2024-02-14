import 'dart:io';
void main(){
  print('Enter the Number 1 : ');
  var a = int.parse(stdin.readLineSync()!);
  print('Enter the Number 2 : ');
  int b = int.parse(stdin.readLineSync()!);
  
  

    a = a + b;
    b = a - b;
    a = a - b;

  print('After Swapping Number 1 is : $a');
  print('After swapping Number 2 is : $b');
  ;

}