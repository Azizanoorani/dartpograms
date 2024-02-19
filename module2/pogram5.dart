import 'dart:io';
 
void main(){
    //read number from user
    print('Enter The Number 1 : ');
    var number1 = int.parse(stdin.readLineSync()!);
     print('Enter The Number 2 : ');
    var number2 = int.parse(stdin.readLineSync()!);
     print('Enter The Number 3 : ');
    var number3 = int.parse(stdin.readLineSync()!);
    
   var max=(number1 > number2)?
   (number1>number3?number1:number3):
   (number2>number3?number2:number3);
   print("Largest among 3 numbers is :$max");
}