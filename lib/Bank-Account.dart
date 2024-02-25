class BankAccount {
  int account_number;
  double balance;
  String account_type;
  double interest_rate;

  BankAccount(
      this.account_number, this.balance, this.account_type, this.interest_rate);

  void deposit(double amount) {
    balance = balance + amount;
    print('Deposited Amount: $amount');
    print('New Balance: $balance');
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance = balance - amount;
      print('Withdraw Amount: $amount');
      print('New Balance: $balance');
    } else {
      print('Insufficient funds. Cannot Withdraw $amount.');
    }
  }

  void add_interest() {
    double interest_amount = balance * interest_rate / 100;
    balance = balance + interest_amount;
    print('Interest Added: $interest_amount');
    print('New Balance: $balance');
  }

  void display() {
    print('Account Number: $account_number');
    print('Balance: \$$balance');
    print('Account Type: $account_type');
    print('Interest Rate: $interest_rate%');
  }

  void interestrate1() {
    print('Interest Rate: $interest_rate%');
  }

  void interestrate2() {
    print('Interest Rate: $interest_rate%');
  }
}

void main() {
  BankAccount account1 = BankAccount(12345, 4000.0, 'Savings', 3.5);
  BankAccount account2 = BankAccount(56789, 5000.0, 'Checking', 2.5);

  print('Account 1:');
  print('\n');
  account1.display();
  print('----------------');
  account1.deposit(1000.0);
  print('----------------');
  account1.withdraw(1500.0);
  print('----------------');
  account1.interestrate1();
  account1.add_interest();
  print('\n');
  print('Acoount 2:');
  print('\n');
  account2.display();
  print('----------------');
  account2.deposit(1200.0);
  print('----------------');
  account2.withdraw(6500.0);
  print('----------------');
  account2.interestrate2();
  account2.add_interest();
}