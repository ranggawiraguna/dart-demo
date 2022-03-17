// ignore_for_file: file_names

void main(List<String> args) async {
  Person person1 = Person();

  // Perintah dibawah ini dijalankan secara terurut, dan berjalan normal
  person1.getData();
  print("Person-1 ID   : " + person1.id);
  print("Person-1 Name : " + person1.name);

  print("\n");

  // Perintah dibawah ini dijalankan secara terurut tetapi terdapat perintah yang belum dijalankan
  // Data yang didapat masih bernilai default, karena method belum selesai mendapatkan data yang sebenarnya
  Person person2 = Person();
  person2.getDataAsync();
  print("Person-2 ID   : " + person2.id);
  print("Person-2 Name : " + person2.name);

  print("\n");

  // Perintah dibawah ini dijalankan secara terurut tetapi terdapat keyword await yang berfungsi untuk menunggu perintah selesai dijalankan terlebih dahulu untuk lanjut ke perintah selanjutnya
  // Sehingga Data berhasil didapatkan terlebih dahulu pada method, dan kemudian baru ditampilkan ke output
  // Bisa dilihat pada console bahwa output akan ditampilkan setelah 3 detik
  Person person3 = Person();
  await person3.getDataAsync();
  print("Person-3 ID   : " + person3.id);
  print("Person-3 Name : " + person3.name);

  // Sama seperti await tetapi dengan cara lain
  Person person4 = Person();
  person4.getDataAsync().whenComplete(() {
    print("Person-4 ID   : " + person4.id);
    print("Person-4 Name : " + person4.name);
  });
  // Jika method mengembalikan suatu nilai, bisa menggunakan method then
  // person4.getDataAsync().then((value) => value);

  print("\n");
}

class Person {
  String id = "00000000", name = "Unknown";

  // Synchronous Function
  // Kode perintah dilaksanakan secara terurut tanpa ada jeda / delay apapun
  getData() {
    id = "00012783";
    name = "Rangga Wiraguna";
  }

  // Asynchronous Function
  // Kode perintah dilaksanakan secara terurut, akan tetapi ada perintah yang memerlukan waktu untuk selesai dieksekusi (misal : pengambilan data dari database ayng membutuhkan waktu sesuai kondisi jaringan yang tersedia)
  Future<void> getDataAsync() async {
    // keyword await berfungsi untuk menunggu suatu perintah selesai untuk menjalankan perintah selanjutnya
    await Future.delayed(Duration(seconds: 3));
    id = "0001278301"; //Sehinga baris ini akan dieksekusi setelah 3 detik
    name = "Rangga Wiraguna";
  }
}
