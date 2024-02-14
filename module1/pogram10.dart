import 'dart:io';
void main(){
  print('Enter the Number : ');
  var number = int.parse(stdin.readLineSync()!);
  

  if(number>0)
  {
    print('Number is Positive');
  }
  else {
    print('Number is Negative');
  }

}