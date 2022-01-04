// ignore_for_file: file_names

void main(List<String> args) {
  print("\n");

  //=============================================================================================================================
  // Void

  printHello();
  printHelloWithName("Rangga Wiraguna");

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Function
  int result = calculateSum(10, 11);
  print("10 + 11 = " + result.toString());
  print("21 + 12 = " + calculateSum(21, 12).toString());
  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Optional Parameter - Named Parameters
  printHello2(name: "Rangga Wiraguna");
  printHello2(name: "Rangga Wiraguna", time: "Evening");
  printHello3(name: "Rangga Wiraguna");
  printHello3(name: "Rangga Wiraguna", time: "Evening");
  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Optional Parameter - Positional Parameters
  printHello4("Rangga Wiraguna");
  printHello4("Rangga Wiraguna", "Evening");
  printHello4("Rangga Wiraguna", "Evening", "Agus Budiantoro");
  printHello5("Rangga Wiraguna");
  printHello5("Rangga Wiraguna", "Evening");
  printHello5("Rangga Wiraguna", "Evening", "Ucup");
  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Function
  int result2 = calculateSum2(20, 21);
  print("20 + 21 = " + result2.toString());
  print("31 + 13 = " + calculateSum2(31, 13).toString());
  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Function Object
  Function thisCalculate = calculateSum2;
  int result3 = thisCalculate(30, 31);
  print("30 + 31 = " + result3.toString());
  print("41 + 14 = " + calculateSum2(41, 14).toString());
  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // Function Anonymous
  print(
    "10 + 20 = " +
        printResult(10, 20, (number1, number2) => number1 + number2).toString(),
  );
  print(
    "20 + 10 = " +
        printResult(20, 10, (number1, number2) => number1 - number2).toString(),
  );
  print("\n");
  //=============================================================================================================================
}

// Void Example
void printHello() {
  print("Hi, Good Morning !");
}

void printHelloWithName(String name) {
  print("Hi, Good Morning " + name + "!");
}

//Function Example
int calculateSum(int a, int b) {
  return a + b;
}

//Optional Parameter - Named Parameters
void printHello2({required String name, String? time}) {
  print("Hi, Good " + (time ?? "Day") + " " + name + "!");
}

//Optional Parameter - Named Parameters with Default
void printHello3({required String name, String time = "Morning"}) {
  print("Hi, Good " + time + " " + name + "!");
}

//Optional Parameter - Positional Parameters
void printHello4(String name, [String? time, String? name2]) {
  print("Hi, Good " +
      (time ?? "Day") +
      " " +
      name +
      (name2 != null ? " & " + name2 : "") +
      " !");
}

//Optional Parameter - Positional Parameters with Default
void printHello5(String name,
    [String time = "Morning", String name2 = "Agus Budiantoro"]) {
  print("Hi, Good " + time + " " + name + " & " + name2 + " !");
}

//Lambda Function / Arrow Function
int calculateSum2(int a, int b) => a + b;

//Function with callback
int printResult(int a, int b, Function operation) => operation(a, b);
