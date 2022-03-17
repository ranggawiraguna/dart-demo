// ignore_for_file: file_names, hash_and_equals

void main(List<String> args) {
  Hero hero1 = Hero(power: 100);

  print("Hero-1 Power : " + hero1.power.toString());

  Hero hero2 = Hero(power: 165);
  print("Hero-2 Power : " + hero2.power.toString());

  Hero hero3 = hero1 + hero2;
  print("Hero-3 Power : " + hero3.power.toString());

  print("\n");

  print("Hero-1 == Hero-2 : " + (hero1 == hero2 ? "Benar" : "Salah"));
  print("Hero-2 == Hero-3 : " + (hero2 == hero3 ? "Benar" : "Salah"));

  Hero hero4 = Hero(power: 100);
  print("Hero-1 == Hero-4 : " + (hero1 == hero4 ? "Benar" : "Salah"));

  print("\n");

  Hero hero5 = hero1 + 100;
  print("Hero-5 Power : " + hero5.power.toString());
  Hero hero6 = hero1 + "Example";
  print("Hero-6 Power : " + hero6.power.toString());

  print("\n");

  print("Hero-1 > Hero-2 : " + (hero1 > hero2 ? "Benar" : "Salah"));
  print("Hero-1 < Hero-2 : " + (hero1 < hero2 ? "Benar" : "Salah"));
  print("Hero-1 < 100000 : " + (hero1 < 100000 ? "Benar" : "Salah"));
}

class Hero {
  int power;

  Hero({required this.power});

  // Override + operation
  // Tidak menggunakan keyword override karena operator + tidak merupakan default operator di setiap object
  Hero operator +(var other) {
    if (other is Hero) {
      return Hero(power: power + other.power);
    } else if (other is int) {
      return Hero(power: power + other);
    } else {
      return this;
    }
  }

  bool operator >(var other) {
    if (other is Hero) {
      return power > other.power;
    } else {
      return false;
    }
  }

  bool operator <(var other) {
    if (other is Hero) {
      return power < other.power;
    } else {
      return false;
    }
  }

  // Override == operation
  // Menggunakan keyword override karena operator == merupakan default operator di setiap object
  @override
  bool operator ==(var other) {
    if (other is Hero) {
      return power == other.power;
    }

    return false;
  }
}
