void main(List<String> args) {
  String s = "   fly me   to   the moon  ";
  print('${LengthWord(s)}');
}

int LengthWord(String s) {
  s = s.trim();
  List<String> a;
  a = s.split(' ');
  return a[a.length - 1].length;
}
