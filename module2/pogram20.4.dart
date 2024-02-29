
import 'dart:io';
void main()
{
  var firstnumber=0,secondnumber=1,next;
  print("Enter the number : ");
  var number = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < number; i++) 
	{
        if (i <= 1) 
		{
            next = i;
        } 
		else 
		{
            next = firstnumber + secondnumber;
            firstnumber = secondnumber;
            secondnumber = next;
        }
        print("$next");
    }
	print("");
}