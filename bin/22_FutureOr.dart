// ignore_for_file: file_names

import 'dart:async';

void main(List<String> args) async {
  User user = User(id: "01278192");

  UserManager userManager1 = UserManager(dataStorage: LocalStorage());
  print("User ID : ");
  print(await userManager1.loadIdUser(user));

  print("");

  UserManager userManager2 = UserManager(dataStorage: FirebaseStorage());
  print("User ID : ");
  print(await userManager2.loadIdUser(user));

  print("\n");
}

// ==============================================================================================================================================================================================
// Basic code from Depedency Inversion Principle

// FutureOr
// Method yang bisa mengakomodasi synchronous dan juga asynchronous tergantung return type yang dibutuhkan
class User {
  final String id;
  User({required this.id});
}

class UserManager {
  final IDataStorage dataStorage;

  UserManager({required this.dataStorage});

  void saveDataUser(User user) {
    dataStorage.saveData(user);
  }

  FutureOr<String> loadIdUser(User user) async {
    return await dataStorage.loadIdUser(user);
  }
}

abstract class IDataStorage {
  void saveData(User user);

  // Interface ini bisa berlaku sebagai asynchronous atau synchronous sesuai tipe kembaliannya
  FutureOr<String> loadIdUser(User user);
}

class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // Connect to firebase
    // Save data in firebase
  }

  // Implementasi interface dengan asynchronous > Return Future
  @override
  Future<String> loadIdUser(User user) async {
    await Future.delayed(Duration(seconds: 3));
    return user.id;
  }
}

class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // Connect to local storage
    // Save data in local storage
  }

  // Implementasi interface dengan synchronous >> Return String langsung
  @override
  String loadIdUser(User user) {
    return user.id;
  }
}
// ==============================================================================================================================================================================================
