// ignore_for_file: file_names

void main(List<String> args) {
  print("");

  // Final : Object as reference
  final Person firstPerson = Person(id: "00000001", name: "Rangga Wiraguna");
  final Person secondPerson = Person(id: "00000001", name: "Rangga Wiraguna");

  print(firstPerson == secondPerson
      ? "firstPerson sama dengan secondPerson"
      : "firstPerson tidak sama dengan secondPerson"); // Keduanya dianggap berbeda karena pendeklarasian objeknya berbeda

  Person thirdPerson = firstPerson;

  print(firstPerson == thirdPerson
      ? "firstPerson sama dengan thirdPerson"
      : "firstPerson tidak sama dengan thirdPerson"); //Karena variabel menggunakan objek yang sama, maka mereka dianggap sama

  print("\n");

  // Const : Value as reference
  var firstPersonConst =
      const PersonConst(id: "00000001", name: "Rangga Wiraguna");
  var secondPersonConst =
      const PersonConst(id: "00000001", name: "Rangga Wiraguna");

  print(firstPersonConst == secondPersonConst
      ? "firstPersonConst sama dengan secondPersonConst"
      : "firstPersonConst tidak sama dengan secondPersonConst"); // Keduanya dianggap sama karena memiliki nilai yang sama, walaupun pendeklarasiannya terpisah

  print("");

  var thirdPersonConst = firstPersonConst;

  print(firstPersonConst == thirdPersonConst
      ? "firstPersonConst sama dengan thirdPersonConst"
      : "firstPersonConst tidak sama dengan thirdPersonConst"); // Tetap dianggap sama

  print(thirdPersonConst == secondPersonConst
      ? "thirdPersonConst sama dengan secondPersonConst"
      : "thirdPersonConst tidak sama dengan secondPersonConst"); // Tetap dianggap sama

  print("\n");
}

class Person {
  String id, name;

  Person({
    required this.id,
    required this.name,
  });
}

class PersonConst {
  final String id, name;

  const PersonConst({
    required this.id,
    required this.name,
  });
}
