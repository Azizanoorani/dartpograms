import 'dart:io';
void main() 
{
  int sum = 0;
	print("Enter a positive integer: ");
  var num = int.parse(stdin.readLineSync()!); 
	if (num < 1) 
	{
        print("Please enter a positive integer");
    } 
	else 
	{
        for (int i = 1; i <= num; i++) 
		{
            sum += i;
        }
		print("$num,$sum");
    }
}