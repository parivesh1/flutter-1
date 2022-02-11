import 'package:flutter/material.dart';

class PatientListProvider extends ChangeNotifier {
  List<PatientModel> bookingList = [
    PatientModel("Shivam", "Male", 22, 20, 1),
    PatientModel("Richard", "Male", 40, 25, 2)
  ];
  List<PatientModel> reachedList = [
    PatientModel("Bard", "Male", 15, 10, 3),
    PatientModel("Ciri", "Female", 20, 18, 4)
  ];
  void add(PatientModel ele) {
    reachedList.add(ele);
  }

  void reached(String name) {
    PatientModel ele;
    bookingList.forEach((element) {
      if (element.name == name) ele = element;
    });
    reachedList.add(ele);
    bookingList.remove(ele);
    notifyListeners();
  }

  void sendIn() {
    reachedList.removeAt(0);
    notifyListeners();
  }
}

class PatientModel {
  String name;
  String gender;
  int age;
  int token;
  int minutesLeft;
  PatientModel(this.name, this.gender, this.age, this.minutesLeft, this.token);
}
