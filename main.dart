import 'dart:io';
import 'studentsmanagement.dart';
import 'teachersmanagement.dart';
import 'attendancedaily.dart';
import 'grademanagement.dart';
import 'occasions.dart';

void main() {
  print("--- School Management System ---");
  print('1. Manage Students');
  print('2. Manage Teachers');
  print('3. Attendance');
  print('4. Grades');
  print('5. Events');
  print('6. Exit');
  print('Enter your choice: ');

  String? choice = stdin.readLineSync();

  while (true) {
    if (choice == "1") {
      manageStudents();
      break;
    } else if (choice == "2") {
      manageTeachers();
      break;
    } else if (choice == "3") {
      attendance();
      break;
    } else if (choice == "4") {
      grades();
      break;
    } else if (choice == "5") {
      events();
      break;
    } else if (choice == "6") {
      print("Program is closing!!");
      return;
    } else {
      print('Invalid choice. Please try again.');
      choice = stdin.readLineSync();
    }
  }
}
