// ignore_for_file: file_names, unused_local_variable

void main(List<String> args) {
  print("");

  print(
      "Catatan : Pada bagian ini, silahkan lihat source code untuk mengetahui lebih detail mengenai materi yang dibahas");

  print("\n");

  print("Single Responsibility Principle : ");
  print(
      "Setiap satu objek sebaiknya dibuat class tersendiri, agar fungsional yang dikerjakan lebih khusus di satu objek tertentu");

  print("\n");

  print("Open / Closed Principle : ");
  print(
      "Jika terjadi suatu perubahan attribute pada class sebaiknya membuat class baru yang sejenis dengan mewariskan class yang lama");

  print("\n");

  print("Liskov Substition Principle : ");
  print(
      "Jika terdapat class yang merupakan class turunan dari class lain, akan tetapi class child memiliki perilaku yang berbeda pada suatu method, sebaiknya method tersebut di override dengan menerapkan perilaku yang berbeda, bukan menghapusnya ataupun mengosongkan method tersebut");

  print("\n");

  print("Interface Segragation Principle : ");
  print(
      "Setiap Interface dibuat khusus dengan maksud menghindari class yang mengimplementasikannya tidak menggunakan variable atau method yang tidak dibutuhkan");

  print("\n");

  print("Depedency Inversion Principle : ");
  print(
      "Membuat struktur yang baik pada kode program dengan maksud untuk menghindari kode program yang sulit dirubah karena semua kode disatukan menjadin satu");
  print(
      "Pada dasarnya, ini membuat suatu kode program yang memiliki kontrak pasti, akan tetapi bisa saja perilaku yang dimilikinya bisa berubah ubah di waktu yang akan datang");

  print("\n");
}

// ==============================================================================================================================================================================================
// Single Responsibility Principle
// Setiap satu objek sebaiknya dibuat class khusus, agar fungsional yang dikerjakan lebih khusus di satu objek tertentu
class Car {
  AirConditioner airConditioner = AirConditioner();
  Radio radio = Radio();

  void turnOnCar() {}
  void turnOffCar() {}
}

class AirConditioner {
  void turnOnAirConditioner() {}
  void turnOffAirConditioner() {}
}

class Radio {
  void playMusic() {}
}
// ==============================================================================================================================================================================================

// ==============================================================================================================================================================================================
// Open / Closed Principle
// Jika terjadi suatu perubahan attribute pada class sebaiknya membuat class baru yang sejenis dengan mewariskan class yang lama
// Dalam artian lain class yang ingin dirubah tidak boleh di modifikasi seperti menambahkan variable ataupun method
// Hal ini dapat membuat versi lama dari code yang dibuat tidak mengalami error
class Robot {
  // Dalam kasus ini robot diupgrade memiliki kemampuan terbang
  // Juga terdapat kemampuan tambahan untuk membunuh monster kecoa
  void talk() {}
  void walk() {}
}

class SuperRobot extends Robot {
  // Semua perilaku Robot akan diambil oleh SuperRobot
  // Class ini melakukan upgrade robot sebelumnya, tanpa menghapus variable ataupun method yang ada pada robor versi lama
  void killCrocoach() {}
  void fly() {}
}
// ==============================================================================================================================================================================================

// ==============================================================================================================================================================================================
// Liskov Substition Principle
// Jika terdapat class yang merupakan class turunan dari class lain, akan tetapi class child memiliki perilaku yang berbeda pada suatu method, sebaiknya method tersebut di override dengan menerapkan perilaku yang berbeda, bukan menghapusnya ataupun mengosongkan method tersebut
class Duck {
  // Dalam kasus ini terdapat MalardDuck yang memiliki perilaku cara memakan yang berbeda dari bebek pada umunya
  void swim() {}
  void quack() {}
  void eat() {
    // Perilaku cara makan bebek pada umunya
  }
}

class MalardDuck extends Duck {
  // Semua perilaku Duck akan diambil oleh MalardDuck
  // Class ini melakukan perubahan pada suatu method yaitu method eat, dikarenakan MalardDuck memiliki cara makan yang berbeda
  // Dengan catatan method yang dirubah (eat()) tidak boleh dihapus ataupun di kosongkan
  @override
  eat() {
    // Perilaku cara makan khusus dari MalardDuck
  }
}
// ==============================================================================================================================================================================================

// ==============================================================================================================================================================================================
// Interface Segragation Principle :
// Membuat suatu interface lebih spesifik, untuk memastikan class yang mengimplementasikannya tidak mendapatkan attribute yang tidak sesuai
// Berfungsi untuk menghindari suatu class yang mengimplementasikan suatu interface, akan tetapi ada satu atau beberapa variable atau attribute yang sebenarnya tidak dibutuhkan
abstract class Hero {
  void regularAttack();
}

abstract class IMagisCaster {
  void castMagic();
}

abstract class IHealer {
  void heal();
}

abstract class IStealer {
  void stealMoney();
}

class Thief extends Hero implements IStealer {
  @override
  void regularAttack() {}

  @override
  void stealMoney() {}
}

class WhiteMage extends Hero implements IHealer, IMagisCaster {
  @override
  void regularAttack() {}

  @override
  void castMagic() {}

  @override
  void heal() {}
}

class BlackMage extends Hero implements IMagisCaster {
  @override
  void regularAttack() {}

  @override
  void castMagic() {}
}
// ==============================================================================================================================================================================================

// ==============================================================================================================================================================================================
// Depedency Inversion Principle
// Membuat struktur yang memungkinkan untuk mengurangi kesalahan pada saat terjadi perubahan kode
// Contoh : Dalam hal ini ada kasus dimana program memiliki fungsional yang pasti ada yaitu save user to storage, akan tetapi storage yang dimaksud bisa saja berubah
//          saat ini storage yang digunakan yaitu firebase, akan tetapi dilain waktu bisa saja kita merubah storage menjadi localstorage
//          perubahan ini bisa saja terjadi, tetapi satu hal yang pasti fungsional untuk menyimpan data user tidak akan berubah
class Example {
  void main(List<String> args) {
    // Jika dilihat dari kode ini, kita tetap menggunakan UserManager sebagai objek yang dapat melakukan operasi pada User
    // Akan tetapi jika dilihat kita bisa menggunakan parameter storage sesuai yang kita butuhkan, dan pasti nya parameter tersebut harus mengimplementasikan interface DataStorage
    UserManager userManager1 = UserManager(dataStorage: FirebaseStorage());
    UserManager userManager2 = UserManager(dataStorage: LocalStorage());
  }
}

class User {
  // Example User Model
}

class UserManager {
  // Manager to operation for User
  final IDataStorage dataStorage;

  // Pada saat membuat object, diminta untuk memasukkan object lain yang merupakan class dengan implementasi IDataStorage
  UserManager({required this.dataStorage});

  void saveDataUser(User user) {
    dataStorage.saveData(user);
  }
}

// Ini disebut kontrak, karena hal yang pasti yaitu DataStorage memiliki suatu fungsi yang dapat menyimpan user
abstract class IDataStorage {
  void saveData(User user);
}

// Contoh class yang menggunakan firebase sebagai storage, dan akan digunakan sebagai parameter dari UserManager
// Jika dilihat ini harus mengimplementasikan IDataStorage, karena UserManager memerlukan parameter yang bertipe tersebut
class FirebaseStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // Connect to firebase
    // Save data in firebase
  }
}

// sedangkan ini merupakan class yang sama seperti FirebaseStorage, akan tetapi storage yang digunakan adalah local storage
class LocalStorage implements IDataStorage {
  @override
  void saveData(User user) {
    // Connect to local storage
    // Save data in local storage
  }
}
// ==============================================================================================================================================================================================
