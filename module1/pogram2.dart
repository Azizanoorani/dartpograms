import 'dart:io';
 
void main(){
    //read number from user
    print('Enter number1');
    var num1 = int.parse(stdin.readLineSync()!);
    print('Enter number2');
    var num2 = int.parse(stdin.readLineSync()!);
 
    var sum = num1 + num2;
    var sub = num1 - num2;
    var mul = num1 * num2;
    var div = num1 % num2;
 
    print('The addition of num1 + num2 = $sum');
    print('The subtraction of num1 - num2 = $sub');
    print('The multipilcation of num1 * num2 = $mul');
    print('The Divsion of num1 % num2 = $div');
}