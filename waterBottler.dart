void main(List<String> args) {
  int numBottles = 15;
  int numExchange = 4;
  int temp = numBottles;
  while (temp >= numExchange) {
    numBottles += (temp ~/ numExchange);
    temp = (temp ~/ numExchange) + (temp % numExchange);
  }
  print('$numBottles');
}
