// ignore_for_file: file_names

void main(List<String> args) {
  // Static keyword
  // Digunakan secara global oleh suatu class, hanya memakai satu memory yang dapat digunakan oleh object dari classnya (Shared)

  Person person1 = Person(name: "Rangga", gender: "Male", age: 21);
  Person.printInfo(person1);
  print("");

  print("Total Person = " + Person.counter.toString() + "\n");

  Person person2 = Person(name: "Agus", gender: "Male", age: 27);
  Person.printInfo(person2);
  print("");

  print("Total Person = " + Person.counter.toString() + "\n");

  Person person3 = Person(name: "Ucup", gender: "Unknown", age: 15);
  Person.printInfo(person3);
  print("");

  print("Total Person = " + Person.counter.toString() + "\n");
}

class Person {
  static int counter = 0;
  String name, gender;
  int age;

  Person({
    required this.name,
    required this.gender,
    required this.age,
  }) {
    counter++;
  }

  static void printInfo(Person person) {
    print("Name   : " + person.name);
    print("Gender : " + person.gender);
    print("Age    : " + person.age.toString());
  }
}
