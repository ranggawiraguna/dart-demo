// ignore_for_file: file_names

void main(List<String> args) {
  print("");

  // Kedua object ini dianggap sama walaupun di deklarasikan berbeda
  AccountServices accountServices_1 = AccountServices();
  AccountServices accountServices_2 = AccountServices();

  print("ObjectService-1 == ObjectService-2 > " +
      ((accountServices_1 == accountServices_2)
          ? "Object Sama"
          : "Object Berbeda"));

  print("\n");
}

class User {
  // Example User
}

// Singleton
// Membuat suatu class hanya bisa digunakan dalam satu objek
// Artinya jika objek ini dibuat lebih dari satu, maka object-object tersebut hanya mengambil satu reference saja
// Dalam kasus ini berguna untuk mengurangi penggunaan memory, karena service ini hanya menggunakan satu reference walaupun di inisialisasi oleh banyak kode / halaman
class AccountServices {
  static final AccountServices _instance = AccountServices._internal();

  AccountServices._internal();

  factory AccountServices() => _instance;

  Future<User> getUserData() async {
    Future.delayed(Duration(seconds: 3));
    return User();
  }
}
