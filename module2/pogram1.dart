import 'dart:io';
 
void main(){
    //read number from user
    print('Enter Year : ');
    var year = int.parse(stdin.readLineSync()!);
    
    if(year % 400==0)
    {
      print('This Year is Leap year $year');
    }
    else
    {
      print('THis year is not a Leap Year : ');
    }
}