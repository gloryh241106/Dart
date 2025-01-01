import 'dart:io';
import 'dart:math';

// ===================== BASIC PROGRAM ======================
void HelloWorld() {
  print('Hello, World!');
}

// ======================= VARIABLES =========================
void VariableUsing() {
  // Variables - Like C++ and JavaScript
  const nameOfVariable = 'Hello, World!';

  String name = """ Hello,
                     World!""";

  int number = 10;
  double num1 = 1.5034;

  // Num: A number can be either an int or a double
  num num2 = 352.3242;

  String temp = '1003';
  // Convert int to double or double to int
  number = num1.toInt();
  num1 = number.toDouble();

  // Round the number
  num2.round();

  // Parse the string to int
  int change = int.parse(temp);
  print(change.runtimeType);

  bool isTrue = true;
  print(isTrue.runtimeType);

  List numList = [1, 2, 3, 4, 5];
  // Create a random number using Random class from dart:math
  numList[0] = Random().nextInt(100);
  numList[1] = Random().nextDouble();

  // Print the value of the variable
  print(nameOfVariable + name);
  print("This is a random number: $numList[0]");
}

/*
  Attention: The type of the variable is depend on what you want:
  - dynamic: Can change the type of the variable, & can change the value
  - var: Can't change the type of the variable, & can change the value
  - final: Can't change the type of the variable, & can't change the value
*/

// ======================= OPERATORS =========================
// Similar to C++
// Arithmetic Operators
// +, -, *, /, %, ~/ (integer division)

// Relational Operators
// ==, !=, >, <, >=, <=

// Logical Operators
// &&, ||, !

// Bitwise Operators
// &, |, ^, ~, <<, >>

// Assignment Operators
// =, +=, -=, *=, /=, %=, ~/=

// Conditional Operators
// condition ? expr1 : expr2

// ======================= USER INPUT ========================
void UserInput() {
  // User Input
  print('Enter your name: ');
  String? name = stdin.readLineSync();
  print('Hello, $name');
}

/* 
  To get the user input, we have to use the stdin.readLineSync() method.
  But, the problem is that the input will always not be a normal string.
  The string should be null, so we have to use the null string operator, 
  which is: String?
  This will allow the string to be null.

  After that, we can use the stdin.readLineSync() method.
*/

// ======================= CONDITIONALS =======================

void Conditionals() {
  // If-Else Statement
  int number = 10;
  if (number > 10) {
    print('Number is greater than 10');
  } else if (number < 10) {
    print('Number is less than 10');
  } else {
    print('Number is equal to 10');
  }

  // Switch Statement
  String grade = 'A';
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Fair');
      break;
    case 'D':
      print('Poor');
      break;
    default:
      print('Invalid Grade');
  }

  // Ternary Operator
  int a = 10;
  int b = 20;
  int smallNumber = a < b ? a : b;
  print('The smallest number is: $smallNumber');

  // Null Operator
  var x = TempNumber();
  int? y = null;

  y = x?.num ?? 0;
  print(y);

  // Python style
  if (x is int) {
    print('x is an integer');
  } else {
    print('x is not an integer');
  }
}

// In the Null Operator, we have:
/*
  ??	  If-null operator
  ??=	  Null-aware assignment operator (If null then assign)
  ?.	  Null-aware access & method invocation operator (If null then access)
  !	    Null assertion operator (If null then throw an exception)
  ?..	  Null-aware cascade operator (If null then ignore)
  ?[]	  Null-aware index operator   (If null then ignore)
  ...?	Null-aware spread operator  (If null then ignore)
*/

class TempNumber {
  int num = 10;
}

// ======================= LOOPS ==============================

void Loops() {
  // For Loop
  for (var i = 0; i < 5; i++) {
    print('Hello, World!');
  }

  // For-Each Loop
  List numList = [1, 2, 3, 4, 5];
  for (var i in numList) {
    print(i);
  }

  // For-Each Loop with Index
  for (var i = 0; i < numList.length; i++) {
    print(numList[i]);
  }

  numList.forEach((n) => print(n));

  // forEach using Function Pointer
  void printNum(n) {
    print(n);
  }

  numList.forEach(printNum);

  // While Loop
  int i = 0;
  while (i < 5) {
    print('Hello, World!');
    i++;
  }

  // Do-While Loop
  int j = 0;
  do {
    print('Hello, World!');
    j++;
  } while (j < 5);

  // Loop Control Statements
  for (var i = 0; i < 5; i++) {
    if (i == 3) {
      continue;
    }
    print(i);
  }

  for (var i = 0; i < 5; i++) {
    if (i == 3) {
      break;
    }
    print(i);
  }
}

// ======================= COLLECTIONS ========================

// List
void ListUsing() {
  // List
  List numList = [1, 2, 3, 4, 5];
  List<String> name = const ['John', 'Doe', 'Smith']; // This list is immutable

  List<String> name2 = [
    ...name
  ]; // This list has all of the element of name list
  print(numList);

  // List Properties
  print(numList.length);
  print(numList.reversed);
  print(numList.isEmpty);
  print(numList.isNotEmpty);

  // List Methods
  numList.add(6);
  numList.remove(6);
  numList.removeAt(2);
  numList.removeLast();
  numList.removeRange(1, 3);
  numList.removeWhere((n) => n % 2 != 0);
  numList.addAll([7, 8, 9]);
  numList.insert(1, 10);
  numList.insertAll(3, [11, 12, 13]);
  numList.replaceRange(1, 3, [14, 15, 16]);
  numList.shuffle();
  numList.sort();
  numList.clear();
}

// Sets
void SetUsing() {
  // Set
  Set numSet = {1, 2, 3, 4, 5};
  var numSet2 = <int>{};
  Set<String> name = {'John', 'Doe', 'Smith'};

  // Set Properties
  print(numSet.length);
  print(numSet.isEmpty);
  print(numSet.isNotEmpty);

  // Set Methods
  numSet.add(6);
  numSet.remove(6);
  numSet.contains(3);
  numSet.clear();
}

// Maps
void MapUsing() {
  Map<String, int> country = {'USA': 1, 'UK': 44, 'India': 91};
  var country2 = {'USA': 1, 'UK': 44, 'India': 91};
  var country3 = Map();

  // Map Properties
  print(country.length);
  print(country.isEmpty);
  print(country.isNotEmpty);

  // Map Methods
  country['China'] = 86; // Add a new key-value pair
  country.remove('UK'); // Remove a key-value pair
  country.containsKey('USA'); // Check if the key exists
  country.containsValue(1); // Check if the value exists
  country.clear(); // Clear the map

  // Map Iteration
  country.forEach((key, value) {
    print('Key: $key, Value: $value');
  });

  for (var key in country.keys) {
    print(key);
  }

  for (var value in country.values) {
    print(value);
  }

  country.entries.forEach((entry) {
    print('Key: ${entry.key}, Value: ${entry.value}');
  });

  // Map fromIterable
  var keys = ['USA', 'UK', 'India'];
  var values = [1, 44, 91];
  var country4 = Map.fromIterables(keys, values);
  print(country4);
}

// ======================= FUNCTIONS ==========================

void Function() {
  // Function
  int add(int a, int b) {
    return a + b;
  }

  int result = add(10, 20);
  print('The sum is: $result');

  // Arrow Function
  int multiply(int a, int b) => a * b;
  int result2 = multiply(10, 20);
  print('The product is: $result2');

  // Optional Parameters
  void display(String name, [int age = 18]) {
    print('Name: $name');
    print('Age: $age');
  }

  display('John', 25);
  display('John');

  // Named Parameters
  void show({String? name, int? age}) {
    print('Name: $name');
    print('Age: $age');
  }

  show(name: 'John', age: 25);
  show(age: 25, name: 'John');

  // If the function is short, we can use the arrow function like this:
  dynamic subtract(a, b) => a - b;

  // We can use the lambda func
}

// In Dart, we can implement the function inside a function.
// ======================= MAIN FUNCTION ======================
void main() {
  Function();
}
