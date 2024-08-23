import 'dart:io';
import 'main.dart';

void grades() {
  while (true) {
    print("--- Grades ---");
    print('1. Total Marks');
    print('2. Percentage');
    print('3. Grade');
    print('4. Back to Main Menu');
    print('Enter your choice: ');

    String choice = stdin.readLineSync()!;

    if (choice == "4") {
      main();
      break;
    }

    print("What is your name?");
    String name = stdin.readLineSync()!;

    print("Enter your Eng, Maths, Chem and Phy Marks?");
    int eng = int.parse(stdin.readLineSync()!);
    int maths = int.parse(stdin.readLineSync()!);
    int chem = int.parse(stdin.readLineSync()!);
    int phy = int.parse(stdin.readLineSync()!);

    totalMarks() {
      return eng + maths + chem + phy;
    }

    percentage() {
      return (totalMarks() / 400) * 100;
    }

    grade() {
      num per = percentage();

      if (per >= 80 && per <= 100) {
        return "A";
      } else if (per >= 70 && per <= 79) {
        return "B";
      } else if (per >= 60 && per <= 69) {
        return "C";
      } else if (per >= 50 && per <= 59) {
        return "C";
      } else if (per >= 0 && per <= 49) {
        return "F";
      }
    }

    if (choice == "1") {
      print("The total marks of $name are : ${totalMarks()}");
      // break;
    } else if (choice == "2") {
      print("The percentage of $name is : ${percentage()} %");
      // break;
    } else if (choice == "3") {
      print("The grade of $name is : ${grade()}");
      // break;
    } else {
      print("Wrong command!");
      choice == stdin.readLineSync()!;
    }
  }
}
