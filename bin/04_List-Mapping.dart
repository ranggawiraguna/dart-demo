// ignore_for_file: file_names, avoid_function_literals_in_foreach_calls

void main(List<String> args) {
  //=============================================================================================================================
  // List
  List<String> myList = ["Rangga", "Agus", "Ucup"];
  List<int> myList2 = [7, 11, 12];

  print(myList[0] + "(" + myList2[0].toString() + ")");
  print(myList[1] + "(" + myList2[1].toString() + ")");
  print(myList[2] + "(" + myList2[2].toString() + ")");

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // List For
  for (int i = 0; i < myList.length; i++) {
    print(myList[i] + "(" + myList2[i].toString() + ")");
  }

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // List For in
  for (String name in myList) {
    print(name);
  }

  for (int number in myList2) {
    print(number.toString());
  }

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // List For Each
  myList.forEach((String element) {
    print(element);
  });

  myList2.forEach((int element) {
    print(element.toString());
  });

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // List Add & Insert
  List<String> myList3 = ["Dart", "Flutter"];
  List<String> myList4 = ["ReactJS", "Javascript"];

  myList3.add("Firebase");
  print(myList3.toString());

  myList3.addAll(myList4);
  print(myList3.toString());

  myList3.insert(0, "Multi-Platform");
  print(myList3.toString());

  myList3.insertAll(myList3.length, ["Github", "Gitlab"]);
  print(myList3.toString());

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // List Remove
  myList3.remove("Multi-Platform");
  print(myList3.toString());

  myList3.removeLast();
  print(myList3.toString());

  myList3.removeAt(2);
  print(myList3.toString());

  myList3.removeRange(2, myList3.length); //Start : 2, End : Max Length - 1
  print(myList3.toString());

  print("\n");

  List<int> myList5 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print(myList5);

  myList5.removeWhere((number) => number % 2 != 0);
  print(myList5);

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // List Check Element
  bool availableFlutter = myList3.contains("Flutter");
  print(availableFlutter
      ? "Flutter include in list"
      : "Flutter not found in list");

  bool availableFirebase = myList3.contains("Firebase");
  print(availableFirebase
      ? "Firebase include in list"
      : "Firebase not found in list");

  List<int> myList6 = [7, 2, 9, 10, 22, 91, 98, 90, 18];
  bool isEvenNumber = myList6.every((number) => number % 2 == 0);
  print(isEvenNumber
      ? "All the members of the list are even"
      : "Not all members of the list are even");

  print(myList6.isNotEmpty ? "List is not empty" : "List is empty");

  myList6.clear();
  print(myList6.isEmpty ? "List is empty" : "List is not empty");

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // List Sub Element
  List<String> myList7 = [
    "Multi - Platform",
    "Dart",
    "Flutter",
    "Firebase",
    "ReactJS",
    "Javascript",
    "Github",
    "Gitlab"
  ];

  List<String> subList1 = myList7.sublist(4); //Start : 4, End : Max Length
  print(subList1);

  List<String> subList2 = myList7.sublist(1, 6); //Start : 1, End : 6-1
  print(subList2);

  myList7.clear();
  print(myList7);

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // List Sorting
  List<String> myList8 = [
    "Multi - Platform",
    "Dart",
    "Flutter",
    "Firebase",
    "ReactJS",
    "Javascript",
    "Github",
    "Gitlab"
  ];

  print(myList8.toString());

  myList8.sort();
  print(myList8.toString());

  print("\n");

  List<int> myList9 = [8, 1, 9, 2, 20, 11, 90, 23, 54, 22, 6, 7, 17];

  myList9.sort();
  print(myList9.toString());

  myList9.sort((a, b) =>
      b -
      a); // if result positif : return b || result negatif : return a (Descending)
  print(myList9.toString());

  myList9.sort((a, b) =>
      a -
      b); // if result negatif : return a || result positif : return b (Ascending)
  print(myList9.toString());

  print("\n");
  //=============================================================================================================================

  //=============================================================================================================================
  // List Manipulation
  List<int> myList10 = [1, 2, 6, 1, 2, 4, 6, 8, 9, 10, 4, 3];
  print(myList10.toString());

  Set<int> mySet = myList10.toSet();
  print(mySet.toString());

  List<int> myList11 = mySet.toList();
  myList11.sort();
  print(myList11);

  List<int> myList12 = myList11.map((e) => e * 2).toList();
  print(myList12);

  print("\n");
  //=============================================================================================================================
}
