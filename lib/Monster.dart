// ignore_for_file: file_names

import 'package:dart_demo/Character.dart';

abstract class Monster extends Character {
  String eatHuman() => "Grr.. Delicious.. Yummy..";
  String move();
}
