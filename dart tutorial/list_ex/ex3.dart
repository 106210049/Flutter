import 'dart:io';

void main() {
  int? expense;
  int value = 0;
  List<int> expenses = [];
  while (true) {
    print("Enter num: ");
    expense = int.tryParse(stdin.readLineSync()!);
    // if (expense == null) {
    //   // Kiểm tra nếu người dùng nhập không phải số
    //   print("Invalid input, please enter a number.");
    //   continue;
    // }
    if (expense! == 0) {
      break;
    } else {
      expenses.add(expense);
    }
  }
  for (expense in expenses) {
    value = value + expense;
  }
  print(value);
}
