void main(List<String> args) {
  List<List<String>> items = [
    ["phone", "blue", "pixel"],
    ["computer", "silver", "lenovo"],
    ["phone", "gold", "iphone"]
  ];
  String ruleKey = 'color';
  String ruleValue = 'silver';
  print(CountsItemsMaching(items, ruleKey, ruleValue));
}

int CountsItemsMaching(
  List<List<String>> items,
  String ruleKey,
  String ruleValue,
) {
  int count = 0;
  for (int i = 0; i < items.length; i++) {
    switch (ruleKey) {
      case 'type':
        if (items[i][0] == ruleValue) count++;
        break;
      case 'color':
        if (items[i][1] == ruleValue) count++;
        break;
      case 'name':
        if (items[i][2] == ruleValue) count++;
        break;

      default:
    }
  }
  return count;
}
