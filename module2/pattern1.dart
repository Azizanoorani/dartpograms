//import 'dart:io';
 
import 'dart:io';

void main(){
  
  print('Enter Number : ');
   var row = int.parse(stdin.readLineSync()!);
    for( int i=1;i <=row ;i++)
    {
      for(int j=1; j<= i ;j++)
      {
        stdout.write("*");
      }
      stdout.write("\n");
    }
}