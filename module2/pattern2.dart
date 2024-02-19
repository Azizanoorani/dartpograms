import 'dart:io';

void main() {
  print("Enter number : ");
  var row = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= row; i++) {
   var n = 1;
    for (int j = 1; j <= i; j++) {
      stdout.write("$n");
      n++;
    }
    print(" ");
  }
}
