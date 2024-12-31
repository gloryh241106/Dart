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

// ======================= MAIN FUNCTION ======================
void main() {
  UserInput();
}