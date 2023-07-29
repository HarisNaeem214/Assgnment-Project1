import 'dart:io';

void main() {
  managementSystem();
}

managementSystem() {
  var iscontineu0 = true;
  print("=====Welcome to Management System=====");
  print(
      '==Press 1 for Manager Login==\n==Press 2 for Employer Login==\n==press 3 or any key to exit');
  while (iscontineu0) {
    String input_for_Manager_or_Employer = stdin.readLineSync()!;

    if (input_for_Manager_or_Employer == "1") {
      print("Welcome to Manager Login");
      Manager();
    } else if (input_for_Manager_or_Employer == "2") {
      print('Welcome to Employer Login');
      employer();
    } else {
      print("end Program");
      iscontineu0 = false;
    }
  }
}

employer() {
  var iscontineu4 = true;

  print('welcome Sir Pleas Enter your ID and Password');

  while (iscontineu4) {
    print("Enter your Id");
    String Employer_id = stdin.readLineSync()!;
    print("Enter Your Password");
    String Employer_Password = stdin.readLineSync()!;
    if (Employer_id == "Employer@gmail.com" &&
        Employer_Password == "11223344") {
      employerwork();
      iscontineu4 = false;
    } else {
      print("Invalid Id and Password");
    }
  }
}

employerwork() {
  print('Welcome Sir');
  var is_contineu2 = true;
  while (is_contineu2) {
    print('Press 1 to view employer status');
    print('Press 2 to view employer Task');
    print('press 3 and  any key to Log out');

    String employer_inpute = stdin.readLineSync()!;
    if (employer_inpute == "1") {
      statustoemploy();
    } else if (employer_inpute == "2") {
      tasktoemploy();
    } else {
      managementSystem();
      is_contineu2 = false;
    }
  }
}

Manager() {
  var iscontineu5 = true;

  print("Welcome Sir Please Enter Your ID and Password");

  while (iscontineu5) {
    print("Pleas Enter Your ID");

    String Manager_ID = stdin.readLineSync()!;

    print("Please Enter Your Password");

    String Manager_Password = stdin.readLineSync()!;

    if (Manager_ID == "Manager@gmail.com" && Manager_Password == "112233") {
      Managerwork();
      iscontineu5 = false;
    } else {
      print("Invalid Id and Password");
    }
  }

  print("Pleas Enter Your ID");

  String Manager_ID = stdin.readLineSync()!;

  print("Please Enter Your Password");

  String Manager_Password = stdin.readLineSync()!;

  if (Manager_ID == "Manager@gmail.com" && Manager_Password == "112233") {
    Managerwork();
  } else {
    print("Invalid Id and Password");
  }
}

Managerwork() {
  print("====Welcome====");

  var iscontinue_1 = true;

  while (iscontinue_1) {
    print('Press 1 for Add Employ');
    print('Press 2 for Delete Employ');
    print('Press 3 for Update Employ');
    print('Press 4 for Task to Employ');
    print('Press 5 for Status of Employ');
    print('Press 6 and any key to log out for exit');

    String managerinput = stdin.readLineSync()!;

    if (managerinput == "1") {
      addemploy();
    } else if (managerinput == "2") {
      deleteemploy();
    } else if (managerinput == "3") {
      updateemploy();
    } else if (managerinput == "4") {
      tasktoemploy();
    } else if (managerinput == "5") {
      statustoemploy();
    } else {
      managementSystem();
      iscontinue_1 = false;
    }
  }
}

List employList = [];
List employerTask = [];

addemploy() {
  print("Enter New Employer name");
  String name = stdin.readLineSync()!;
  print("Enter Employer Id");
  String ei = stdin.readLineSync()!;
  print("Enter  Employer Destination");
  String ed = stdin.readLineSync()!;
  employList.add({"Name": name, "Employer ID": ei, "Employer Destination": ed});
  print("$employList\n");
}

deleteemploy() {
  print("Enter Id to remove Employer");
  var removeE = int.parse(stdin.readLineSync()!);
  employList.removeAt(removeE);
}

updateemploy() {}

tasktoemploy() {
  print("Enter Employer Task");
  String task = stdin.readLineSync()!;
  employerTask.add(task);
  print(employList);
}

statustoemploy() {
  print("The List of Employer : $employList");
}
