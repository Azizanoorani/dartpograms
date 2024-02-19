import 'dart:io';

void main() {
  var n3;
  print("Enter Number : ");
  var n = int.parse(stdin.readLineSync()!);
  print("Enter first number : ");
  var  n1 = int.parse(stdin.readLineSync()!);
  print("Enter second number : ");
  var n2 = int.parse(stdin.readLineSync()!);

  for (int i = 0; i <= n; i++) {
    n3 = n1 + n2;
    print('$n3');
    n1 = n2;
    n2 = n3;
  }
}
