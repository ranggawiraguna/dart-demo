// ignore_for_file: file_names, prefer_initializing_formals

class Person {
  String? name, gender;
  int? age;

  Person({
    String name = "No Name",
    String gender = "Unknown",
    int age = 0,
  }) {
    this.name = name;
    this.gender = gender;
    this.age = age;
  }

  void printInfo() {
    print("Name   : " + name!);
    print("Gender : " + gender!);
    print("Age    : " + age!.toString());
  }
}
