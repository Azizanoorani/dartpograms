import 'dart:io';

void main() {
  print("Enter Number : ");
  var num = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= num; i++) {
    for (int j = 1; j <= i; j++) {
      if (j % 2 == 0) {
        stdout.write("0");
      } else {
        stdout.write("1");
      }
    }
    print("\n");
  }
}
