// ignore_for_file: file_names

void main(List<String> args) {
  print("\n");

  //=============================================================================================================================
  // Enum
  // Deklarasi daftar opsi pilihan dari suatu nilai

  Monster monster1 = Monster(status: MonsterStatus.normal);
  print("Monster-1 Move : ");
  monster1.move();

  print("");

  Monster monster2 = Monster(status: MonsterStatus.poisoned);
  print("Monster-2 Move : ");
  monster2.move();

  print("");

  Monster monster3 = Monster(status: MonsterStatus.confused);
  print("Monster-3 Move : ");
  monster3.move();

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Cascade Notation
  // Pemanggilan attribute secara terurut dari suatu object

  print("Monster Action : ");
  Monster monster = Monster(status: MonsterStatus.normal)
    ..move()
    ..eat()
    ..move()
    ..eat();

  print("Monster Status > " + monster.status.toString());

  print("\n");
  //=============================================================================================================================
}

//Example Enum Option
enum MonsterStatus { normal, poisoned, confused }

class Monster {
  final MonsterStatus status;

  Monster({required this.status});

  void move() {
    //Check value from enum
    switch (status) {
      case MonsterStatus.normal:
        print("Monster is moving");
        break;

      case MonsterStatus.poisoned:
        print("Monster cannot move. Monster is dying. Monster needs help.");
        break;

      case MonsterStatus.confused:
        print("Monster is spinning");
        break;

      default:
        break;
    }
  }

  void eat() {
    print("Monster is eating human...");
  }
}
