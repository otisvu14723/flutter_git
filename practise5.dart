void main() {
  List<int> numbers = List.generate(101, (index) => index);

  // Liệt kê các số lẻ
  print("Các số lẻ:");
  for (int number in numbers) {
    if (soLe(number)) {
      print(number);
    }
  }

  // Liệt kê các số chẵn
  print("\nCác số chẵn:");
  for (int number in numbers) {
    if (soChan(number)) {
      print(number);
    }
  }

  // Kiểm tra xem 0 là số chẵn hay số lẻ
  print("\nKiểm tra 0:");
  if (soChan(0)) {
    print("0 là số chẵn");
  } else {
    print("0 là số lẻ");
  }
}

bool soChan(int number) {
  return number % 2 == 0;
}

bool soLe(int number) {
  return number % 2 != 0;
}
