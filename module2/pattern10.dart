import 'dart:io';

void main() {
  var n = 1;
  print("Enter Number : ");
  var num = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= num; i++) {
    for (int j = 1; j < i + 1; j++) {
      stdout.write("${n++}");
    }
    print(" ");
  }
}
