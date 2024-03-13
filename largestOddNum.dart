void main(List<String> args) {
  String num = '24623245';
  String res = '';
  for (int i = num.length - 1; i >= 0; i--) {
    if (int.parse(num[i]).isOdd) {
      res = num.substring(0, i + 1);
      break;
    }
  }
  print('$res');
}
