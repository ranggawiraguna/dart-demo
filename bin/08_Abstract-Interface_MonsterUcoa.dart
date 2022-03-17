// ignore_for_file: file_names

import 'package:dart_demo/FlyingMonster.dart';
import 'package:dart_demo/Monster.dart';
import 'package:dart_demo/MonsterCockroach.dart';
import 'package:dart_demo/MonsterUburUbur.dart';
import 'package:dart_demo/MonsterUcoa.dart';

void main(List<String> args) {
  //=============================================================================================================================
  // Abstract & Interface
  // Abstract  : template yang bisa digunakan sebagai parent dari class lain (Setiap class hanya dapat extends 1 abstract class)
  // Interface : sama halnya dengan abstract, akan tetapi dia hanya berupa template kosong, dan class yang mmengimpelementasikannya harus meng-override semua attribut yang ada pada interface (Setiap clas dapat implements banyak interface)

  List<Monster> monsters = [];

  MonsterUburUbur monsterUburUbur1 = MonsterUburUbur();
  MonsterCockroach monsterCockroach1 = MonsterCockroach();
  MonsterUcoa monsterUcoa1 = MonsterUcoa();
  MonsterUburUbur monsterUburUbur2 = MonsterUburUbur();
  MonsterCockroach monsterCockroach2 = MonsterCockroach();
  MonsterUcoa monsterUcoa2 = MonsterUcoa();

  monsterCockroach2.healthPoint = 30;
  monsterUburUbur2.healthPoint = 65;

  monsters.add(monsterCockroach1);
  monsters.add(monsterUcoa1);
  monsters.add(monsterUburUbur1);
  monsters.add(monsterCockroach2);
  monsters.add(monsterUcoa2);
  monsters.add(monsterUburUbur2);

  for (Monster monster in monsters) {
    // The is keyword is used to check the data type
    if (monster is FlyingMonster) {
      print((monster as FlyingMonster).fly());
    }
  }

  print("\n");
  //=============================================================================================================================
}
