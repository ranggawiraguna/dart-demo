// ignore_for_file: file_names, prefer_typing_uninitialized_variables

void main(List<String> args) {
  dynamic data1; // Tipedata yang dapat dimasukkan nilai dengan tipe apapun

  data1 = 99;
  print(data1);
  print("\n");

  data1 = "Hello, World!";
  print(data1);
  print("\n");

  data1 = Person();
  print(data1.name);
  print("");
  print(data1 is Person);
  print(data1 is String);
  print((data1 as Person).name);
  print("\n");

  var data2; //Jika tidak dideklarasiin diawal, maka tipedata akan di set menjadi dynamic

  data2 = 100;
  print(data2);

  data2 = "Hello, World!";
  print(data2);

  data2 = Person();
  print(data2.name);
  print("");
  print(data2 is Person);
  print(data2 is String);
  print((data2 as Person).name);
  print("\n");

  //Jika dideklarasiin diawal, maka tipedata akan di set menjadi nilai yang diberikan pada saat inisialisasi
  var data3 = 100;
  print(data3);

  // Wrong code
  // data3 = "Hello, World!";
  // print(data3);
}

class Person {
  String name = "Rangga";
}
