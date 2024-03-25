void main(List<String> args) {
  String s = "rrr";
  String t = "rrrt";
  print('${findTheDiffer(s, t)}');
}

String findTheDiffer(String s, String t) {
  List<int> assciCode = List.filled(26, 0);
  int a = t.length - 1;
  for (int i = 0; i < s.length; i++) {
    assciCode[s[i].codeUnitAt(0) - 97]++;
    assciCode[t[i].codeUnitAt(0) - 97]--;
  }
  assciCode[t[a].codeUnitAt(0) - 97]--;
  for (int i = 0; i < 26; i++) {
    if (assciCode[i] != 0) {
      return String.fromCharCode(i + 97);
    }
  }
  return '';
}
