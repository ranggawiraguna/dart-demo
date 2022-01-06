// ignore_for_file: file_names

import 'package:dart_demo/Person.dart';
import 'package:dart_demo/Student.dart';

void main(List<String> args) {
  //=============================================================================================================================
  // Constuctor Optional
  Person person1 = Person();
  Person person2 = Person(name: "Rangga Wiraguna");
  Person person3 = Person(name: "Rangga Wiraguna", gender: "Male", age: 21);

  person1.printInfo();
  print("");
  person2.printInfo();
  print("");
  person3.printInfo();
  print("");

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Constuctor Required & Overriding from parent
  Student student = Student(
    nim: "1803015106",
    grade: "Informatics (7)",
    studentName: "Rangga Wiraguna",
    studentGender: "Male",
    studentAge: 21,
  );

  student.printInfo();

  print("\n");
  //=============================================================================================================================
}
