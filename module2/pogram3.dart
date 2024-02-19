import 'dart:io';
 
void main(){
    //read number from user
    print('Enter The Number 1 : ');
    var number1 = int.parse(stdin.readLineSync()!);
     print('Enter The Number 2 : ');
    var number2 = int.parse(stdin.readLineSync()!);
     print('Enter The Number 3 : ');
    var number3 = int.parse(stdin.readLineSync()!);
    
    if(number1 > number2)
    {
     if(number1 > number3)
     {
      print('Number 1 is Greater');
     }
     else
     {
       print('Number 3 is Greater ');
     }
    }
    else
    {
      if(number2 > number3)
      {
        print('Number 2 is  Greater');
      }
      else
      {
       print('Number 3 is Greater');
      }
    }
}