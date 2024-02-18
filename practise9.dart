void findMinMaxValues(List<int> numbers) {
  if (numbers.length < 3) {
    print("Không đủ 3 phần tử");
  } else {
    numbers.sort();
    int length = numbers.length;
    List<int> smallestValues = numbers.sublist(0, length < 3 ? length : 3);
    List<int> largestValues = numbers.sublist(length - 3 < 0 ? 0 : length - 3);

    print('3 giá trị nhỏ nhất: $smallestValues');
    print('3 giá trị lớn nhất: $largestValues');
  }
}

void main() {
  List<int> numbers = [7, 2, 9, 4, 5, 1, 8, 3, 6];
  findMinMaxValues(numbers);
}
