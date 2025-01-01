import 'dart:async';
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
  dynamic subtract(var num1, var num2) => num1 - (num2 ?? 0);
  print(subtract(10, 5));

  // Lambda Function
  var addNumbers = (int a, int b) {
    return a + b;
  };
}

// In Dart, we can implement the function inside a function.

// ======================= CLASSES ============================

// We can implement the class in Dart like C++ and Java
class Person {
  // Properties - Which are the variables
  String name = '';
  int age = 0;

  // Constructor - This is the initializer of the class
  Person(String name, [int age = 18]) {
    this.name = name;
    this.age = age;
  }

  // Named Constructor 1 - Just like C++
  void guest() {
    name = 'Guest';
    age = 18;
  }

  // Named Constructor 2 - We can implement straight the method of the class
  Person.myCustomConstructor(this.name, this.age);

  void showOutput() {
    print(name);
    print(age);
  }
}

class X {
  final name;
  static const int age = 10;

  X(this.name); // This constructor will assign name once, and it can't be changed
}

void ClassUsing() {
  // Object
  var person1 = Person('John', 25);
  person1.showOutput();

  var person2 = Person('Smith');
  person2.showOutput();

  var person3 = Person.myCustomConstructor('Doe', 30);
  person3.showOutput();

  var person4 = Person('John');
  person4.guest();
  person4.showOutput();

  var x = X('Jack');
  print(x.name);
  print(X.age);

  // x.name = 'Jill'; // This will give an error because the name is final
  // x.age = 20; // This will give an error because the age is constant
}

// Inheritance
// The superclass
class Vehicles {
  String? models;
  int? year;

  Vehicles(this.models, this.year);

  void show() {
    print("Models: $models");
    print("Year: $year");
  }
}

// The child class inherits the superclass
class Cars extends Vehicles {
  String? color;

  Cars(String models, int year, this.color) : super(models, year);

  void show() {
    super.show();
    print("Color: $color");
  }
}

/* In the above example, the keyword super is used to call the class Vehicles
   constructor. The super keyword in this case has all the properties of the
   superclass Vehicles. So, in line 441, we call the show() method of the class
   Vehicles using the super keyword, which makes us easier to code because 
   we don't have to repeat the previous code */

void InheritanceUsing() {
  var car1 = Cars('BMW', 2021, 'Black');
  car1.show();
}

// In the case the subclass need to override the superclass method
// we can use the @override keyword

// For example:
class Object1 {
  int serialNumber = 0;

  Object1(this.serialNumber);

  void show() {
    print(serialNumber);
  }

  dynamic square(var num) => num * num;
}

class Object2 extends Object1 {
  String name = '';
  Object2(this.name, int serialNumber) : super(serialNumber);

  @override
  void show() {
    print(name);
    super.show();
  }

  // In case the object you want to similar to the superclass, we don't need the
  // @override keyword
  dynamic square(var num) => super.square(num);
}

void OverrideUsing() {
  var obj1 = Object1(10);
  obj1.show();
  print(obj1.square(10));

  var obj2 = Object2('John', 20);
  obj2.show();
  print(obj2.square(10));
}

// ======================= GETTERS AND SETTERS =================
/* Getters and Setters are used to get and set the value of the instance variables
   of a class. In Dart, we can use the get and set keywords to define the getters
   and setters.
*/

class Rectangle {
  double posX = 0;
  double posY = 0;
  double width = 0;
  double height = 0;

  Rectangle(this.posX, this.posY, this.width, this.height);

  // Getters
  double get right => posX + width;
  double get bottom => posY + height;

  // Setters
  set right(double value) => posX = value - width;
  set bottom(double value) => posY = value - height;
}

void GetterSetterUsing() {
  var rect = Rectangle(3, 4, 20, 15);
  print(rect.right);
  print(rect.bottom);

  rect.right = 12;
  rect.bottom = 10;

  print(rect.posX);
  print(rect.posY);
}

// ======================= ABSTRACT CLASS ====================
/* An abstract class is a class that cannot be instantiated. It is used to define
   the structure of the class. To create an abstract class, we use the abstract
   keyword. An abstract class can have abstract methods, which means that the
   methods do not have a body. The abstract methods must be implemented in the
   subclass.

   In other words, the abstract class is a scaffold for the subclass to inherit.
   All the subclasses must implement the abstract methods of the superclass.
*/

abstract class Animal {
  void eat();
  void move();
}

class Dog extends Animal {
  @override
  void eat() {
    print('Dog is eating');
  }

  @override
  void move() {
    print('Dog is moving');
  }
}

void AbstractClassUsing() {
  var dog = Dog();
  dog.eat();
  dog.move();
}

// ======================= ENUMERATION =======================
/* Enumeration is a way to define a group of constants. It is used to define a
   collection of constant values. In Dart, we can create an enumeration using the
   enum keyword. The enum keyword is followed by the name of the enumeration and
   the list of constant values.
*/

enum Color { red, green, blue }

void EnumerationUsing() {
  print(Color.red);
  print(Color.green);
  print(Color.blue);
}

// ======================= EXCEPTION HANDLING =================

/* 
  Exception handling is a mechanism to handle runtime errors. In Dart, we can use
   the try, catch, and finally blocks to handle exceptions. The try block contains
   the code that may throw an exception. The catch block is used to handle the
   exception. The finally block is always executed, whether an exception is thrown
   or not.
*/
void ExceptionHandling() {
  int x = 12;
  int y = 0;
  var result;

  // Custom Exception - Remember to throw the exception
  dynamic notDivideByZero(num x, num y) {
    if (y == 0) throw Exception('Cannot divide by zero');
    return x / y;
  }

  // Try - Except - Finally block
  try {
    result = notDivideByZero(x, y);
  } catch (e) {
    print(e);
  } finally {
    print('Finally block is always executed');
  }
}

// ======================= FILE HANDLING ======================

void FileHandling() {
  var file = File('test.txt');

  if (file.existsSync()) {
    print('File exists');
  } else {
    print('File does not exist');
  }

  var content = file.readAsStringSync();
  print(content);

  var file2 = File('test2.txt');
  file2.writeAsStringSync('Hello, World!');
}

// ======================= ASYNC AND AWAIT ====================

void AsyncAwait() {
  print('Fetching user details...');
  getUserDetails();
  print('Fetching user details...');

  print('Fetching user details...');
  getUserDetails2();
  print('Fetching user details...');
}

void getUserDetails() {
  Future.delayed(Duration(seconds: 3), () {
    print('User details fetched successfully');
  });
}

// This function will wait for the Future.delayed() to complete
void getUserDetails2() async {
  await Future.delayed(Duration(seconds: 3), () {
    print('User details fetched successfully');
  });
}

// ======================= MAIN FUNCTION ======================
void main() {
  AsyncAwait();
}
