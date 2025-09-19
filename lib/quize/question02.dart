import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Enter 6 integers:");
  for (int i = 0; i < 6; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }

  int sumOdd = 0;
  for (int n in numbers) {
    if (n % 2 != 0) {
      sumOdd += n;
    }
  }

  int smallest = numbers[0];
  for (int n in numbers) {
    if (n < smallest) {
      smallest = n;
    }
  }

  print("Sum of odd numbers: $sumOdd");
  print("Smallest number: $smallest");
}
