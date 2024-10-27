late final List<Map<Object, dynamic>> allAccounts = [];
late final List<Map<Object, dynamic>> history = [];

void main() {
  BankAccount nathanAccount = BankAccount();
  nathanAccount.createAccount(
      'Nathan', 'Ngum', 12, 'savings', 'male', 672676029);

  // Create a deposit instance for Nathan
  Deposit nathanDeposit = Deposit();
  nathanDeposit.amount = 100.21;
  nathanDeposit.date = DateTime.now();
  nathanDeposit.message = 'My first deposit';
  nathanDeposit.balance =
      nathanAccount.balance; // Set balance to the account's balance
  nathanDeposit.depo(nathanDeposit.amount!);

  updateAccountBalance(nathanAccount, nathanDeposit.balance);

  Withdrawal nathanWithdrawal = Withdrawal();
  nathanWithdrawal.balance =
      nathanDeposit.balance; // Set the balance to the last updated balance
  nathanWithdrawal.withdrawalAmount = 10.0;
  nathanWithdrawal.date = DateTime.now();
  nathanWithdrawal.withdraw(nathanWithdrawal.withdrawalAmount);

  updateAccountBalance(nathanAccount, nathanWithdrawal.balance);

  nathanWithdrawal.withdrawalAmount = 20.33;
  nathanWithdrawal.withdraw(nathanWithdrawal.withdrawalAmount);
  updateAccountBalance(nathanAccount, nathanWithdrawal.balance);

  print(
      '.................................................................................');

  BankAccount yannickAccount = BankAccount();
  yannickAccount.createAccount(
      'Yannick', 'Ashu', 30, 'current', 'female', 6726762345);

  // Create a deposit instance for Yannick
  Deposit yannickDeposit = Deposit();
  yannickDeposit.amount = 100444333.21;
  yannickDeposit.date = DateTime.now();
  yannickDeposit.message = 'My first deposit';
  yannickDeposit.balance = yannickAccount.balance;
  yannickDeposit.depo(yannickDeposit.amount!);

  updateAccountBalance(yannickAccount, yannickDeposit.balance);

  Withdrawal yannickWithdrawal = Withdrawal();
  yannickWithdrawal.balance = yannickDeposit.balance;
  yannickWithdrawal.withdrawalAmount = 102177.0;
  yannickWithdrawal.date = DateTime.now();
  yannickWithdrawal.withdraw(yannickWithdrawal.withdrawalAmount);

  updateAccountBalance(yannickAccount, yannickWithdrawal.balance);

  yannickWithdrawal.withdrawalAmount = 20.33;
  yannickWithdrawal.withdraw(yannickWithdrawal.withdrawalAmount);
  updateAccountBalance(yannickAccount, yannickWithdrawal.balance);

  print(
      '.................................................................................');

  // Print all accounts and history
  print('all accounts in the system');
  print(allAccounts);
  print(
      '.................................................................................');
  print('All past transactions in the system');
  print(history);
  print(
      '.................................................................................');
}

// Function to update the balance in the allAccounts list
void updateAccountBalance(BankAccount account, double newBalance) {
  for (var acc in allAccounts) {
    if (acc['firstName'] == account.firstName &&
        acc['lastName'] == account.lastName) {
      acc['balance'] = newBalance;
    }
  }
}

// Class to create bank accounts
class BankAccount {
  late String firstName;
  late String lastName;
  late int age;
  double balance = 0;
  late String accountType;
  late int phoneNumber;
  late String gender;

  Map<Object, dynamic> createAccount(String firstName, String lastName, int age,
      String accountType, String gender, int phoneNumber) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
    this.accountType = accountType;
    this.gender = gender;
    this.phoneNumber = phoneNumber;

    var newAccount = {
      'age': age,
      'lastName': lastName,
      'firstName': firstName,
      'accountType': accountType,
      'balance': balance,
      'gender': gender,
      'phoneNumber': phoneNumber
    };
    allAccounts.add(newAccount);
    return newAccount;
  }
}

class Deposit extends BankAccount {
  double? amount;
  String? message;
  DateTime date = DateTime.now();
  String title = 'Deposit';

  void depo(double amount) {
    this.amount = amount;
    if (this.amount! > 0) {
      this.balance += amount;
      print(
          'Amount of $amount was successfully deposited. New balance: $balance');

      history.add({
        'title': this.title,
        'amount': this.amount,
        'message': this.message,
        'date': this.date.toIso8601String(),
        'balance': this.balance,
      });
    } else {
      print('Please deposit a reasonable amount of money.');
    }
  }
}

class Withdrawal extends BankAccount {
  double withdrawalAmount = 0;
  String topic = 'Withdrawal';
  DateTime date = DateTime.now();

  void withdraw(double amount) {
    this.withdrawalAmount = amount;
    if (withdrawalAmount > 0 && withdrawalAmount <= this.balance) {
      this.balance -= withdrawalAmount;
      print(
          'Successfully withdrew $withdrawalAmount. Remaining balance: $balance');

      history.add({
        'topic': this.topic,
        'amount': this.withdrawalAmount,
        'date': DateTime.now().toIso8601String(),
        'balance': this.balance,
      });
    } else {
      print('Please enter an appropriate withdrawal amount.');
    }
  }
}
