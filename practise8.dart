import 'dart:math';

// Hàm tính giá trị trung bình
double _Average(List<int> numbers) {
  if (numbers.isEmpty) {
    return 0.0;
  }
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum / numbers.length.toDouble();
}

// Hàm tìm min max
void min_max(List<int> numbers) {
  if (numbers.isEmpty) {
    print("Mảng rỗng.");
  } else {
    int max = numbers[0];
    int min = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > max) {
        max = numbers[i];
      }
      if (numbers[i] < min) {
        min = numbers[i];
      }
    }
    print('Giá trị lớn nhất trong mảng là: $max');
    print('Giá trị nhỏ nhất trong mảng là: $min');
  }
}

//Hàm tìm số lần xuất hiện
Map<int, int> findOccurrences(List<int> numbers) {
  Map<int, int> dem = {};

  for (int number in numbers) {
    dem[number] = (dem[number] ?? 0) + 1;
  }
  return dem;
}

//Hàm đếm chẵn lẻ
void demChanLe(List<int> numbers) {
  int demChan = 0;
  int demLe = 0;

  for (int number in numbers) {
    if (number % 2 == 0) {
      demChan++;
    } else {
      demLe++;
    }
  }

  print('Số lượng số chẵn: $demChan');
  print('Số lượng số lẻ: $demLe');
}

void main() {
  List<int> numbers = [1, 1, 4, 3, 5, 8, 3, 6, 4];

  //Giá trị trung bình
  double average = _Average(numbers);
  print('Giá trị trung bình của mảng là: $average');

  // tìm min max
  min_max(numbers);

  // Đếm số lần xuất hiện
  Map<int, int> occurrences = findOccurrences(numbers);
  for (var key in occurrences.keys) {
    print('số lần xuất hiện của $key là ${occurrences[key]} ');
  }

  //Đếm số lượng chẵn lẻ
  demChanLe(numbers);
}
