import 'dart:math';

void main(List<String> args) {
  int n = 6;
  double value = log(n) / log(4);
  int t = value.toInt();
  if (pow(4, t) == n) {
    print(true);
  } else
    print(false);
}
