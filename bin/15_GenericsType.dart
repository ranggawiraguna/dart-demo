// ignore_for_file: file_names

void main(List<String> args) {
  print("");

  var box1 = SecureBox<String>(pin: "123", data: "Rangga Wiraguna");
  print("Data : " + (box1.getData("123") ?? "Pin salah"));
  print("");
  print("Data : " + (box1.getData("883") ?? "Pin salah"));

  print("");

  var box2 = SecureBox<int>(pin: "000", data: 21);
  print("Data : " + (box2.getData("000") ?? "Pin salah").toString());
  print("");
  print("Data : " + (box2.getData("765") ?? "Pin salah").toString());

  print("");

  var box3 = SecureBox<Person>(
      pin: "cxz", data: Person(id: "0000001", name: "Rangga Wiraguna"));

  if (box3.getData("cxz") != null) {
    print("Data : ");
    print("- ID   : " + box3.getData("cxz")!.id);
    print("- Name : " + box3.getData("cxz")!.name);
  } else {
    print("Data : Pin salah");
  }

  print("");

  if (box3.getData("000") != null) {
    print("Data : ");
    print("- ID   : " + box3.getData("000")!.id);
    print("- Name : " + box3.getData("000")!.name);
  } else {
    print("Data : Pin salah");
  }

  print("\n");
}

// Example class with generic type
// Class yang membutuhkan suatu tipe data yang akan digunakan sebagai tipe data pada attribute didalamnya
// Disini membuat suatu data yang memiliki pin untuk mengaksesnya, dengan tipedata bebas sesuai yang di inisialisasikan
class SecureBox<T> {
  final String pin;
  final T data;

  SecureBox({required this.pin, required this.data});

  T? getData(String pinInput) => (pinInput == pin) ? data : null;
}

// Example class
class Person {
  String id, name;

  Person({
    required this.id,
    required this.name,
  });
}
