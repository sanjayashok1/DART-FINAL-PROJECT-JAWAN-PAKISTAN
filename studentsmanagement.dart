import 'dart:io';
import 'main.dart';

List students = [
  {"id": 1, "name": "Sanjay", "class": 12},
  {"id": 2, "name": "Arham", "class": 12}
];

manageStudents() {
  print("--- Manage Students ---");
  print('1. Add Student');
  print('2. View Students');
  print('3. Update Student');
  print('4. Delete Student');
  print('5. Back to Main Menu');
  print('Enter your choice: ');

  String choice = stdin.readLineSync()!;

  while (true) {
    if (choice == "1") {
      addStudent();
      break;
    } else if (choice == "2") {
      viewStudents();
      break;
    } else if (choice == "3") {
      updateStudent();
      break;
    } else if (choice == "4") {
      deleteStudent();
      break;
    } else if (choice == "5") {
      main();
      break;
    } else {
      print("You entered incoorect code. Please write it again!");
      choice = stdin.readLineSync()!;
    }
  }
}

addStudent() {
  print("Enter new student's ID?");
  int id = int.parse(stdin.readLineSync()!);

  print("Enter new student's Name?");
  String name = stdin.readLineSync()!;

  print("Enter new student's Class?");
  int cls = int.parse(stdin.readLineSync()!);

  Map newStudent = {"id": id, "name": name, "class": cls};

  students.add(newStudent);
  print("The student has been added!");
  manageStudents();
}

viewStudents() {
  print("--- Student's List ---");

  if (students.isEmpty == true) {
    print("The student list is empty");
  } else {
    for (var element in students) {
      print(
          "ID : ${element["id"]}, Name : ${element["name"]}, Class : ${element["class"]}");
    }
  }

  manageStudents();
}

updateStudent() {
  print("Enter the name of the student you want to update?");
  String nameToBeUpdated = stdin.readLineSync()!;
  bool studentFound = false;

  for (var i = 0; i < students.length; i++) {
    if (students[i]["name"] == nameToBeUpdated) {
      print("Enter new ID?");
      String newID = stdin.readLineSync()!;
      students[i]["id"] = newID;

      print("Enter new name?");
      String newName = stdin.readLineSync()!;
      students[i]["name"] = newName;

      print("Enter new class?");
      String newCls = stdin.readLineSync()!;
      students[i]["class"] = newCls;

      print("The student has been updated.");
      studentFound = true;
      break;
    }
  }

  if (!studentFound) {
    print("Student does not exist!");
  }

  manageStudents();
}

deleteStudent() {
  print("Enter the name of the student you want to delete?");
  String nameToBeDeleted = stdin.readLineSync()!;
  bool isDeleted = false;

  for (var i = 0; i < students.length; i++) {
    if (students[i]["name"] == nameToBeDeleted) {
      students.removeAt(i);
      print("The stududent has been deleted.");
      isDeleted = true;
      break;
    }
  }

  if (!isDeleted) {
    print("Student does not exist.");
  }

  manageStudents();
}
