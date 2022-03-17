// ignore_for_file: file_names

import 'package:dart_demo/DrinkAbility.dart';
import 'package:dart_demo/FlyingMonster.dart';
import 'package:dart_demo/MonsterUburUbur.dart';

class MonsterUcoa extends MonsterUburUbur
    with DrinkAbility
    implements FlyingMonster {
  @override
  String fly() => "I'm Flying...";

  @override
  String move() => "I'm Fly Fast...";
}
