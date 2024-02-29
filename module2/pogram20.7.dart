/* C program to find sum of digits of a number 
 
#include <stdio.h>
 
int main(void)
{
    int num, sum = 0, rem;
    printf("Enter a number: ");
    scanf("%d", &num);
 
    // Keep dividing until the number is not zero
    while (num != 0)
    {
        rem = num % 10;
        sum = sum + rem;
        num = num / 10;
    }
    printf("Sum of digits of the number is %d", sum);
    return 0;
}*/
import 'dart:io';

void main() {
  double sum=0,num,rem;
  print("Enter Number : ");
   num = double.parse(stdin.readLineSync()!);
  while(num!=0)
  {
    rem=num%10;
    sum= sum +rem;
    num= num / 10;

  }
  print("Sum of digits of the number is$sum");
}
