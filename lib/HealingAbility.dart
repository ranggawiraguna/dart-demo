// ignore_for_file: file_names

import 'package:dart_demo/Hero.dart';

mixin HealingAbility on Hero {
  int heal(int currentHp) => currentHp + 20;
}
