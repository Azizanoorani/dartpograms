import 'dart:io';

void main() {
  var fact = 1;
  print("Enter Number : ");
  var n = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= n; i++) {
    fact *= i;
  }
  print("factorial is : $fact");
}
