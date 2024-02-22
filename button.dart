import 'dart:async';

void main() {
  var number = 0;
  buttonCount(number);
}

void buttonCount(int number) {
  void onPressed(int number) {
    print('Button pressed, number is now: $number');
  }

  for (int i = 0; i < 5; i++) {
    number = number + 1;
    onPressed(number);
  }
}
