void main(List<String> args) {
  List<int> heights = [1, 1, 4, 2, 1, 3];
  print(heightChecker(heights));
}

int heightChecker(List<int> heights) {
  int count = 0;
  List<int> expected = List.from(heights);
  expected.sort();
  for (int i = 0; i < heights.length; i++) {
    if (heights[i] != expected[i]) {
      count++;
    }
  }
  return count;
}
