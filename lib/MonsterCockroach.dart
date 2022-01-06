// ignore_for_file: file_names

import 'package:dart_demo/FlyingMonster.dart';
import 'package:dart_demo/Monster.dart';

class MonsterCockroach extends Monster implements FlyingMonster {
  @override
  String fly() => "Syuuung...";

  @override
  String move() => "Take a leisurely walk...";
}
