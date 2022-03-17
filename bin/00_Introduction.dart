// ignore_for_file: file_names

import 'dart:io';

void main(List<String> args) {
  String? inputTeks = stdin.readLineSync();
  print(inputTeks ?? "Kosong");
  int? inputAngka = int.tryParse(stdin.readLineSync() ?? "");
  print(inputAngka ?? "Kosong");
}
