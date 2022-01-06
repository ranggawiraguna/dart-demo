// ignore_for_file: file_names

import 'package:dart_demo/Knight.dart';
import 'package:dart_demo/MonsterUcoa.dart';

void main(List<String> args) {
  //=============================================================================================================================
  // Mixin
  // Sama seperti interface, akan tetapi mixin tidak mewajibkan class yang mengunakkannya untuk meng-override atribut yang ada, atau dalam artian lain mixin sudah berisi template dengan function yang sudah didefinisikan perilakunya
  MonsterUcoa monsterUcoa = MonsterUcoa();
  monsterUcoa.healthPoint = 100;
  print(monsterUcoa.drink());

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Mixin on specific class
  // Mixin yang hanya berlaku kepada class yang ditentukan dan juga turunannya

  Knight knight = Knight();
  knight.healthPoint = 100;
  print(knight.killMonster());
  knight.healthPoint = knight.heal(knight.healthPoint);
  print("hero HP : " + knight.healthPoint.toString());

  print("\n");
  //=============================================================================================================================
}
