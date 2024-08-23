import 'dart:io';
import 'main.dart';

List students = [
  {"id": 1, "name": "Talha", "class": 11},
  {"id": 2, "name": "Jameel", "class": 12}
];

manageTeachers() {
  print("--- Manage Students ---");
  print('1. Add Teaher');
  print('2. View Teachers');
  print('3. Update Teacher');
  print('4. Delete Teacher');
  print('5. Back to Main Menu');
  print('Enter your choice: ');

  String choice = stdin.readLineSync()!;

  while (true) {
    if (choice == "1") {
      addTeacher();
      break;
    } else if (choice == "2") {
      viewTeachers();
      break;
    } else if (choice == "3") {
      updateTeacher();
      break;
    } else if (choice == "4") {
      deleteTeacher();
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

addTeacher() {
  print("Enter new teacher's ID?");
  int id = int.parse(stdin.readLineSync()!);

  print("Enter new teacher's Name?");
  String name = stdin.readLineSync()!;

  print("Enter new teacher's Class?");
  int cls = int.parse(stdin.readLineSync()!);

  Map newStudent = {"id": id, "name": name, "class": cls};

  students.add(newStudent);
  print("The teacher has been added!");
  manageTeachers();
}

viewTeachers() {
  print("--- Teacher's List ---");

  if (students.isEmpty == true) {
    print("The student list is empty");
  } else {
    for (var element in students) {
      print(
          "ID : ${element["id"]}, Name : ${element["name"]}, Class : ${element["class"]}");
    }
  }

  manageTeachers();
}

updateTeacher() {
  print("Enter the name of the teacher you want to update?");
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

      print("The Teacher has been updated.");
      studentFound = true;
      break;
    }
  }

  if (!studentFound) {
    print("Teacher does not exist!");
  }

  manageTeachers();
}

deleteTeacher() {
  print("Enter the name of the teacher you want to delete?");
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
    print("Teacher does not exist.");
  }

  manageTeachers();
}
