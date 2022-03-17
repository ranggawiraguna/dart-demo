// ignore_for_file: file_names

import 'package:dart_demo/Person.dart';

class Student extends Person {
  String nim, grade;

  Student({
    required this.nim,
    required this.grade,
    required String studentName,
    required String studentGender,
    required int studentAge,
  }) : super(name: studentName, gender: studentGender, age: studentAge);

  @override
  void printInfo() {
    super.printInfo();
    print("NIM    : " + nim);
    print("Grade  : " + grade);
  }
}
