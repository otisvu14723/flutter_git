extension NumberExtensions on num {
  num add(num other) {
    if (other <= 0) throw ArgumentError('Số phải lớn hơn 0.');
    return this + other;
  }

  num subtract(num other) {
    if (other <= 0) throw ArgumentError('Số phải lớn hơn 0.');
    return this - other;
  }

  num multiply(num other) {
    if (other <= 0) throw ArgumentError('Số phải lớn hơn 0.');
    return this * other;
  }

  num divide(num other) {
    if (other <= 0) throw ArgumentError('Số phải lớn hơn 0.');
    return this / other;
  }
}

void main() {
  try {
    int x = 10;
    int y = -2;

    print('Add method: ${x.add(y)}');
    print('Subtract method: ${x.subtract(y)}');
    print('Multiple method: ${x.multiply(y)}');
    print('Divide method: ${x.divide(y)}');
  } catch (e) {
    print('$e');
  }
}
