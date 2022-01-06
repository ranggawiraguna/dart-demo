// ignore_for_file: file_names

//Check this class
import 'package:dart_demo/Rectangle.dart';

void main(List<String> args) {
  //=============================================================================================================================
  // Encapsulation
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
