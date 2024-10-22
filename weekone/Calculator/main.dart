import 'dart:io';

void main() {
  double numberOne;
  double numberTwo;
  while (true) {
    try {
      print('Enter the first number:');
      numberOne = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }

  while (true) {
    try {
      print('Enter the second number:');
      numberTwo = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print('Invalid input. Please enter a valid number.');
    }
  }

  while (true) {
    try {
      print(
          'What operation would you like to perform on these numbers? (Addition, Subtraction, Multiplication, Division, Modulus)');
      String operation = stdin.readLineSync()!.toLowerCase();

      switch (operation) {
        case 'addition':
        case '+':
          print('Result: ${Operator(numberOne, numberTwo).Addition()}');
          return;
        case 'subtraction':
        case '-':
          print('Result: ${Operator(numberOne, numberTwo).Subtraction()}');
          return;
        case 'multiplication':
        case '*':
          print('Result: ${Operator(numberOne, numberTwo).Multiplication()}');
          return;
        case 'division':
        case '/':
          if (numberTwo != 0) {
            print('Result: ${Operator(numberOne, numberTwo).Division()}');
          } else {
            print('Error: Division by zero is not allowed.');
          }
          return;
        case 'modulus':
        case '%':
          print('Result: ${Operator(numberOne, numberTwo).Modulus()}');
          return;
        case '>':
          print('Result: ${Operator(numberOne, numberTwo).greaterCompare()}');
          return;
        case '<':
          print('Result: ${Operator(numberOne, numberTwo).lesserCompare()}');
          break;
        default:
          print('No action: Invalid operation. Please try again.');
      }
    } catch (e) {
      print('Please enter a valid operation and try again.');
    }
  }
}

class Operator {
  double numberOne;
  double numberTwo;

  Operator(this.numberOne, this.numberTwo);

  double Addition() {
    return numberOne + numberTwo;
  }

  double Subtraction() {
    return numberOne - numberTwo;
  }

  double Multiplication() {
    return numberOne * numberTwo;
  }

  double Division() {
    return numberOne / numberTwo;
  }

  double Modulus() {
    return numberOne % numberTwo;
  }

  String greaterCompare() {
    if (numberTwo > numberOne) {
      return ('$numberTwo is greater than $numberOne');
    } else if (numberOne > numberTwo) {
      return ('$numberOne is greater than $numberTwo');
    } else {
      return 'the numbes are equal';
    }
  }

  String lesserCompare() {
    if (numberTwo < numberOne) {
      return ('$numberTwo is lesser than $numberOne');
    } else if (numberOne < numberTwo) {
      return ('$numberOne is lesser than $numberTwo');
    } else {
      return 'the numbes are equal';
    }
  }
}
