// ignore_for_file: file_names

void main(List<String> args) {
  List<Person> persons = [
    Person(name: "Rangga", role: "Administrator", age: 21),
    Person(name: "Agus", role: "User", age: 27),
    Person(name: "Budi", role: "User", age: 19),
    Person(name: "Ucup", role: "Merchant", age: 20),
    Person(name: "Bunga", role: "Administrator", age: 22),
    Person(name: "Mawar", role: "Merchant", age: 18),
    Person(name: "Melati", role: "Merchant", age: 24),
    Person(name: "Dimas", role: "Administrator", age: 23),
    Person(name: "Ani", role: "User", age: 21),
    Person(name: "Tri", role: "Administrator", age: 22),
  ];

  for (Person person in persons) {
    print(person.name + " - " + person.role + " - " + person.age.toString());
  }

  print("\n");

  //Sort by name ascending
  persons.sort((a, b) => a.name.compareTo(b.name));
  for (Person person in persons) {
    print(person.name + " - " + person.role + " - " + person.age.toString());
  }

  print("\n");

  //Sort by name descending
  persons.sort((a, b) => b.name.compareTo(a.name));
  for (Person person in persons) {
    print(person.name + " - " + person.role + " - " + person.age.toString());
  }

  print("\n");

  // Sort by age ascending
  persons.sort((a, b) => a.age - b.age);
  for (Person person in persons) {
    print(person.name + " - " + person.role + " - " + person.age.toString());
  }

  print("\n");

  // Sort by age descending
  persons.sort((a, b) => b.age - a.age);
  for (Person person in persons) {
    print(person.name + " - " + person.role + " - " + person.age.toString());
  }

  print("\n");

  //Sort by role and age ascending
  persons.sort((a, b) {
    if (a.role.compareTo(b.role) != 0) {
      return a.role.compareTo(b.role);
    } else {
      return a.age.compareTo(b.age);
    }
  });
  for (Person person in persons) {
    print(person.name + " - " + person.role + " - " + person.age.toString());
  }

  print("\n");

  //Sort by name descending
  persons.sort((a, b) {
    if (a.role.compareTo(a.role) != 0) {
      return a.role.compareTo(a.role);
    } else {
      return a.age.compareTo(a.age);
    }
  });
  for (Person person in persons) {
    print(person.name + " - " + person.role + " - " + person.age.toString());
  }

  print("\n");
}

class Person {
  final String name, role;
  final int age;

  Person({
    required this.name,
    required this.role,
    required this.age,
  });
}
