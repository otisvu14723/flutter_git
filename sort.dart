import 'dart:math';

void main(List<String> args) {
  final numbers = List.generate(10, (index) {
    final random = Random();
    return random.nextInt(100);
  });
  print('before sort: $numbers');
  numbers.sort();
  print('after sort: $numbers');
}
