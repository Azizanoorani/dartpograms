import 'dart:io';

void main() {
  print("Enter Number : ");
  var num = int.parse(stdin.readLineSync()!);
  for (int i = 0; i < num; i++) {
    for (int j = 2 * (num - i); j >= 0; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}
