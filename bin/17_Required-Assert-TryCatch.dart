// ignore_for_file: file_names

void main(List<String> args) {
  late Person person;
  try {
    person = Person(name: null);
  } catch (e) {
    print(e);
  }

  print("Person Name : " + (person.name ?? "Unknown"));
  print("Person Age  : " + person.age.toString());
}

class Person {
  final String? name;
  final int age;

  Person({
    required this.name,
    this.age = 0,
  }) {
    assert(name != null, "You must give the person name");
  }
}
