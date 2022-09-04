// ignore_for_file: library_names, file_names
library SecureBox;

// Example class with generic type
// Class yang membutuhkan suatu tipe data yang akan digunakan sebagai tipe data pada attribute didalamnya
// Disini membuat suatu data yang memiliki pin untuk mengaksesnya, dengan tipedata bebas sesuai yang di inisialisasikan
class SecureBox<T> {
  late final String _pin;
  late final T _data;

  SecureBox({required String pin, required T data}) {
    _pin = pin;
    _data = data;
  }

  T? getData(String pinInput) => (pinInput == _pin) ? _data : null;
}
