import 'dart:math';

void main() {
  int n = 20;

  print('Các số nguyên tố từ 1 đến $n là:');
  for (int i = 2; i <= n; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
