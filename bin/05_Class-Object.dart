// ignore_for_file: file_names

void main(List<String> args) {
  //=============================================================================================================================
  // Class
  Rectangle rectangle;

  rectangle = Rectangle();
  rectangle.long = 10;
  rectangle.wide = 20;
  print("Long                 : " + rectangle.long.toString());
  print("Width                : " + rectangle.wide.toString());
  print("Result Area          : " + rectangle.calculateArea().toString());
  print("Result Circumference : " +
      rectangle.calculateCircumference().toString());

  print("\n");
  //=============================================================================================================================
}

class Rectangle {
  double? long, wide;

  double calculateArea() => long! * wide!;

  double calculateCircumference() => (long! * 2) + (wide! * 2);
}
