import 'dart:io';

void main() {
  
  print("Enter Number : ");
  var num = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= num; i++) {
   var n = 1;
    for (int j = 1; j <= num - i; j++) {
      stdout.write(" ");
    }
    for (int k = 1; k <= i; k++) {
      stdout.write("$n");
      n++;
    }

    print(" ");
  }
}
