import 'dart:io';

void main() {
  while (true) {
    print("Enter a 9-digit phone number:");

    String? inputString = stdin.readLineSync();
    int? input;
    try {
      input = int.parse(inputString!);
    } on FormatException {
      print("Invalid input. Please enter a valid phone number format.");
      continue;
    }

    if (input.toString().length != 9) {
      print("Invalid input. Please enter a 9-digit phone number.");
      continue;
    }

    String numString = input.toString();
    String firstThree = numString.substring(0, 3);
    int number = int.parse(firstThree);

    netWorkOperator operation = netWorkOperator(number);
    operation.detect();
    break;
  }
}

class netWorkOperator {
  final int phone;

  const netWorkOperator(this.phone);

  void detect() {
    if ((phone >= 650 && phone <= 655) ||
        (phone >= 670 && phone <= 679) ||
        (phone >= 680 && phone <= 685)) {
      print('MTN');
    } else if ((phone >= 656 && phone <= 659) ||
        (phone >= 690 && phone <= 699) ||
        (phone >= 686 && phone <= 689)) {
      print('Orange');
    } else if (phone >= 661 && phone <= 669) {
      print('Nexttel');
    } else if (phone == 622) {
      print('Camtel');
    } else {
      print('Operator not found.');
    }
  }
}
