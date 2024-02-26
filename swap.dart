void swap<T>(List<T> list, int index1, int index2) {
  if (index1 < 0 ||
      index1 >= list.length ||
      index2 < 0 ||
      index2 >= list.length) {
    throw ArgumentError('Vị trí index không hợp lệ');
  }

  T temp = list[index1];
  list[index1] = list[index2];
  list[index2] = temp;
}

void main(List<String> args) {
  List<int> numbers = [1, 2, 3, 4, 5];

  swap(numbers, 0, 4);

  print(numbers);
}
