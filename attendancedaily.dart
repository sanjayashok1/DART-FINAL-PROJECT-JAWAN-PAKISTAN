import 'dart:io';
import 'main.dart';

void attendance() {
  List students = [
    {'id': 1, 'name': 'Sanjay', 'attendance': ''},
    {'id': 2, 'name': 'Arham', 'attendance': ''},
    {'id': 3, 'name': 'mubashir', 'attendance': ''},
  ];

  while (true) {
    print("--- Attendance ---");
    print("1. Mark Attendance");
    print("2. View Attendance");
    print("3. Back to Main Menu");
    print("Enter your choice: ");
    String choice = stdin.readLineSync()!;
    bool isFound = false;

    if (choice == "1") {
      print("Enter your ID?");
      int id = int.parse(stdin.readLineSync()!);
      for (var std in students) {
        if (std["id"] == id) {
          std["attendance"] += 'present';
          print("Your attendance has been marked as present.");
          print(students);
          isFound = true;
        }
      }
      if (!isFound) {
        print("ID does not exist!");
      }
    } else if (choice == "2") {
      for (var std in students) {
        print(
            "The attendance of name ${std["name"]} of ID ${std["id"]} is ${std["attendance"]}");
      }
    } else if (choice == "3") {
      main();
    } else {
      print("Invaid code, enter again!");
    }
  }
}
