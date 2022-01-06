// ignore_for_file: file_names

class Character {
  int? _healthPoint;

  int get healthPoint => _healthPoint ?? 0;

  set healthPoint(int value) {
    _healthPoint = value;
  }
}
