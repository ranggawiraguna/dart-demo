// ignore_for_file: file_names

import 'dart:io';

void main(List<String> args) {
  stdout.write("Masukkan Karakter : ");
  String? inputTeks = stdin.readLineSync();
  print("Karakter yang dimasukkan : " + (inputTeks ?? "Salah"));

  print("");

  stdout.write("Masukkan Angka : ");
  int? inputAngka = int.tryParse(stdin.readLineSync() ?? "");
  print("Angka yang dimasukkan : " +
      (inputAngka == null ? "Salah" : inputAngka.toString()));
}
