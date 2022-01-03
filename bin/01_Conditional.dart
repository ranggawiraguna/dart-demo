// ignore_for_file: file_names

import 'dart:io';

void main(List<String> args) {
  int? inputAngka;
  String inputNilaiAbjad;

  print("\n");

  //=============================================================================================================================
  // Ternary
  stdout.write("Masukkan Angka : ");
  inputAngka = int.tryParse(stdin.readLineSync() ?? "0");
  inputAngka = inputAngka ?? 0;
  String result1 = inputAngka > 0
      ? "Angka yang dimasukkan adalah positif"
      : "Angka yang dimasukkan bukan positif";
  print(result1);

  String result2 = inputAngka < 0
      ? "Angka yang dimasukkan adalah negatif"
      : "Angka yang dimasukkan bukan negatif";
  print(result2);

  String result = inputAngka > 0
      ? "Angka yang dimasukkan adalah positif"
      : (inputAngka < 0
          ? "Angka yang dimasukkan adalah negatif"
          : "Angka yang dimasukkan adalah nol");
  print(result);

  print(
    inputAngka > 0
        ? "Angka yang dimasukkan adalah positif"
        : (inputAngka < 0
            ? "Angka yang dimasukkan adalah negatif"
            : "Angka yang dimasukkan adalah nol"),
  );
  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // If Else
  stdout.write("Masukkan Angka : ");
  inputAngka = int.tryParse(stdin.readLineSync() ?? "");
  if (inputAngka != null) {
    if (inputAngka > 0) {
      print('Angka yang dimasukkan adalah positif');
    } else if (inputAngka < 0) {
      print('Angka yang dimasukkan adalah negatif');
    } else {
      print('Angka yang dimasukkan adalah nol');
    }
  } else {
    print("\nSilahkan masukkan angka dengan benar");
  }
  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Switch Case
  stdout.write("Masukkan Nilai Abjad : ");
  inputNilaiAbjad = stdin.readLineSync() ?? "";
  switch (inputNilaiAbjad.toUpperCase()) {
    case "A":
      print("Nilai yang dimasukkan Sangat Bagus");
      break;

    case "B":
      print("Nilai yang dimasukkan Bagus");
      break;

    case "C":
      print("Nilai yang dimasukkan Cukup");
      break;

    case "D":
      print("Nilai yang dimasukkan Kurang");
      break;

    default:
      print("Nilai yang dimasukkan tidak terdaftar");
      break;
  }
  print("\n");
  //=============================================================================================================================
}
