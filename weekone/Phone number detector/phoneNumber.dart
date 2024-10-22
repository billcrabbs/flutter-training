class NetworkOperator {
  final int phone;

  const NetworkOperator(this.phone);

  void detect() {
    String firstThree = phone.toString().substring(0, 3);
    int networkPrefix = int.parse(firstThree);
    if ((networkPrefix >= 650 && networkPrefix <= 655) ||
        (networkPrefix >= 670 && networkPrefix <= 679) ||
        (networkPrefix >= 680 && networkPrefix <= 685)) {
      print('Network Operator: MTN');
    } else if ((networkPrefix >= 656 && networkPrefix <= 659) ||
        (networkPrefix >= 690 && networkPrefix <= 699) ||
        (networkPrefix >= 686 && networkPrefix <= 689)) {
      print('Network Operator: Orange');
    } else if (phone >= 661 && phone <= 669) {
      print('Network Operator: Nexttel');
    } else if (phone == 622) {
      print('Network Operator: Camtel');
    } else {
      print('Number not recognized');
    }
  }
}

void main() {
  NetworkOperator operator1 = NetworkOperator(672676029);
  NetworkOperator operator2 = NetworkOperator(987654321);

  operator1.detect();
  operator2.detect();
}
