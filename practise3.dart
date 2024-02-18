void main() {
  // Khai báo các kiểu dữ liệu
  int nonNullableI = 5;
  int? nullable = null;
  dynamic dynamicVariable = 10;
  var varVariable = "World";

  final double finalDouble = 2.718;
  late String lateString;
  const int constInt = 100;

  lateString = "Late initialization";

  // Gọi hàm tính giai thừa của 6
  int factorialOf6 = factorial(6);
  print("Factorial of 6: $factorialOf6");

  //Chuyển đổi dữ liệu
  print("Int from String: ${intFromString("123")}");
  print("Double From String: ${doubleFromString("12.42")}");
  print("Int From Double: ${intFromDouble(324.56)}");
  print("Double From Int: ${doubleFromInt(123)}");
  print("String From Int: ${stringFromInt(346)}");
  print("String From Double: ${stringFromDouble(234.63)}");
}

// Các hàm chuyển đổi dữ liệu
int intFromString(String str) => int.tryParse(str) ?? -1;
double doubleFromString(String str) => double.tryParse(str) ?? -1;
int intFromDouble(double d) => d.toInt();
double doubleFromInt(int i) => i.toDouble();
String stringFromInt(int i) => i.toString();
String stringFromDouble(double d) => d.toString();

class myClass {
  static int staticInt = 20;
}

// Hàm tính giai thừa
int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
