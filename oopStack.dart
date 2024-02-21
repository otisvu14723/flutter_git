void main(List<String> args) {
  Stack1 s = Stack1(capacity: 4);
  s.push('4');
  s.push('6');
  s.push(5);
  s.pop();
  s.hienThi();
}

class Stack1 {
  final int capacity;
  final List list = [];

  Stack1({required this.capacity});
  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  void push(var data) {
    if (isFull()) {
      throw Exception('full');
    } else {
      list.add(data);
    }
  }

  void pop() {
    if (isEmpty()) {
      throw Exception('empty');
    } else {
      list.removeAt(list.length - 1);
    }
  }

  void hienThi() {
    for (int i = 0; i < list.length; i++) {
      print('${list[i]}');
    }
  }
}
