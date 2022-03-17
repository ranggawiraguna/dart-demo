// ignore_for_file: file_names

class Rectangle {
  //Make Private
  double? _long, _wide;

  double get long => _long ?? 0;

  set long(double value) {
    _long = value;
  }

  double get wide => _wide ?? 0;

  set wide(double value) {
    _wide = value;
  }

  double calculateArea() => _long! * _wide!;

  double calculateCircumference() => (_long! * 2) + (_wide! * 2);
}
