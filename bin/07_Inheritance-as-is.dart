// ignore_for_file: file_names

import 'package:dart_demo/Hero.dart';
import 'package:dart_demo/Monster.dart';
import 'package:dart_demo/MonsterUburUbur.dart';
import 'package:dart_demo/MonsterUcoa.dart';

void main(List<String> args) {
  //=============================================================================================================================
  // Inheritance

  Hero hero1 = Hero();
  Monster monster1 = Monster();
  MonsterUcoa monsterUcoa1 = MonsterUcoa();
  MonsterUburUbur monsterUburUbur1 = MonsterUburUbur();

  // Hero or Monster Have healthpoint, because they inheritance from Character
  hero1.healthPoint = 50;
  print("Hero HP    : " + hero1.healthPoint.toString() + "\n");

  monster1.healthPoint = 75;
  print("Monster HP : " + monster1.healthPoint.toString() + "\n");

  monsterUcoa1.healthPoint = 40;
  print("Monster HP : " + monsterUcoa1.healthPoint.toString());
  print("Ucoa-1     : " + monsterUcoa1.eatHuman() + "\n");

  monsterUburUbur1.healthPoint = 80;
  print("Monster HP : " + monsterUburUbur1.healthPoint.toString());
  print("UburUbur-1 : " + monsterUburUbur1.eatHuman() + "\n");

  // Personal Attributes
  print("Hero-1     : " + hero1.killMonster());
  print("Monster-1  : " + monster1.eatHuman());
  print("Ucoa-1     : " + monsterUcoa1.fly());
  print("UburUbur-1 : " + monsterUburUbur1.swim());

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Keyword is & as
  List<Monster> monsters = [];

  MonsterUburUbur monsterUburUbur2 = MonsterUburUbur();
  MonsterUcoa monsterUcoa2 = MonsterUcoa();

  monsterUcoa2.healthPoint = 30;
  monsterUburUbur2.healthPoint = 65;

  monsters.add(monsterUcoa1);
  monsters.add(monsterUburUbur1);
  monsters.add(monsterUcoa2);
  monsters.add(monsterUburUbur2);

  for (Monster monster in monsters) {
    // The is keyword is used to check the data type
    if (monster is MonsterUburUbur) {
      print(monster.swim());
    }
  }

  print("");

  // Data type conversion with data type records must match
  MonsterUcoa monsterUcoa = monsters[0] as MonsterUcoa;

  print("Monster as MonsterUcoa : " + monsterUcoa.fly());

  // Wrong use of as keyword
  // MonsterUburUbur monsterUburUbur = monsters[0] as MonsterUcoa;

  print("\n");
  //=============================================================================================================================
}
