void main(List<String> args) {
  List<String> names = ['Mary', 'John', 'Emma'];
  List<int> heights = [180, 165, 170];
  print(sortPeople(names, heights));
}

List<String> sortPeople(List<String> names, List<int> heights) {
  List<List<dynamic>> mergedList =
      List.generate(heights.length, (index) => [heights[index], names[index]]);
  mergedList.sort((x, y) => y[0].compareTo(x[0]));
  for (int i = 0; i < heights.length; i++) {
    heights[i] = mergedList[i][0];
    names[i] = mergedList[i][1];
  }
  return names;
}
