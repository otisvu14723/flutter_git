void main(List<String> args) {
  int num = 1248;
  int count = 0;
  String nums = num.toString();
  for (int i = 0; i < nums.length; i++) {
    int digit = int.parse(nums[i]);
    if (digit != 0 && num % digit == 0) {
      count++;
    }
  }
  print('$count');
}
