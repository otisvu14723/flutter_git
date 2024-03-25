void main(List<String> args) {
  String j = 'aA';
  String s = 'aAAbbbb';
  print('${Count(j, s)}');
}

int Count(String j, String s) {
  Map<String, int> charCount = {};
  int count = 0;
  for (int i = 0; i < j.length; i++) {
    String char = j[i];
    if (charCount.containsKey(char)) {
      charCount[char] = charCount[char]! + 1;
    } else {
      charCount[char] = 1;
    }
  }
  for (int i = 0; i < s.length; i++) {
    String char = s[i];
    if (charCount.containsKey(char)) {
      count++;
    }
  }

  return count;
}
