import 'dart:io';

void main() {
  bool isNum = false;
  while (!isNum) {
    // http://en.wikipedia.org/wiki/ANSI_escape_code#CSI_codes
    print("\x1B[2J\x1B[0;0H"); // clear entire screen, move cursor to 0;0
    //print("Please enter number only\nEnter number:");
    stdout.write("Please enter number only\nEnter number: ");
    try {
      int? number = int.parse(stdin.readLineSync()!);
      print("The entered number is ${number}");
      isNum = true;
    } catch (e) {
      print("\nYour input is not a number!\n");
      stdout.write("Press any key to continue ");
      stdin.readLineSync();
    }
  }
}
