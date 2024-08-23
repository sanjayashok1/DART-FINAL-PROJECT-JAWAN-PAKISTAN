import 'dart:io';
import 'main.dart';

void events() {
  print('--- School Events ---');
  print('1. Sports Day');
  print('2. Science Fair');
  print('3. Back to Main Menu');
  print('Enter your choice: ');

  String choice = stdin.readLineSync()!;

  while (true) {
    if (choice == "1") {
      sportsDay();
      break;
    } else if (choice == "2") {
      scienceFair();
      break;
    } else if (choice == "3") {
      main();
      break;
    } else {
      print("Wrong code, enter again!");
      choice = stdin.readLineSync()!;
    }
  }
}

sportsDay() {
  print("Sports day is happening in School.Do you want to join? Yes or No?");
  String response = stdin.readLineSync()!.toLowerCase();
  List participants = [];

  if (response == "yes") {
    print("Enter you name, id and one favourite sport?");
    String name = stdin.readLineSync()!;
    int id = int.parse(stdin.readLineSync()!);
    String favSport = stdin.readLineSync()!;

    Map newPlayer = {"name": name, "id": id, "favourite sport": favSport};

    participants.add(newPlayer);
    print("You have been joined!");
    events();
    print(participants);
  } else {
    print("OK, Thanks!");
    events();
  }
}

scienceFair() {
  print("Date is over, thanks!!");
  events();
}
