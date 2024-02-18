import 'dart:io';

void printMultiplicationTable() {
  print("Bảng cửu chương theo chiều dọc:");
  for (int i = 1; i <= 9; i++) {
    for (int j = 1; j <= 9; j++) {
      print('$i x $j = ${i * j}');
    }
    print(''); // Xuống dòng sau khi in xong một hàng
  }
  print('Bảng cửu chương theo chiều ngang:');
  for (int t = 1; t <= 9; t++) {
    String v = ' ' * 5;
    stdout.write('--- $t ---$v');
  }
  print('');
  List<String> tong = [];
  for (int i = 1; i <= 9; i++) {
    int sum = 0;
    for (int j = 1; j <= 9; j++) {
      String kqua = (i * j).toString();
      sum += (i * j);
      String space = ' ' * (6 - kqua.length);
      stdout.write('$j x $i = $kqua$space');
    }
    tong.add(sum.toString());
    print(''); // Xuống dòng sau khi in xong một hàng
  }
  for (int d = 0; d < 9; d++) {
    String gach = '-' * 5;
    String cach = ' ' * (7 - tong[d].length);
    stdout.write(' $gach ${tong[d]}$cach');
  }
  print('');
}

void main() {
  printMultiplicationTable();
}


// --- 1 ---     --- 2 ---     --- 3 ---
// 1 x 1 = 1     2 x 1 = 2     3 x 1 = 3
// 1 x 2 = 2     2 x 2 = 4     3 x 2 = 9
// 1 x 3 = 3
// 1 x 4 = 4
// 1 x 5 = 5
// 1 x 6 = 6
// 1 x 7 = 7
// 1 x 8 = 8
// 1 x 9 = 9
