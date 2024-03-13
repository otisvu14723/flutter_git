void main(List<String> args) {
  int n = 14;
  int d = 0;
  while (n != 1) {
    if (n.isEven) {
      n = n ~/ 2;
      d += n;
    } else {
      d += (n - 1) ~/ 2;
      n = (n - 1) ~/ 2 + 1;
    }
  }
  print('$d');
}
// n-1
