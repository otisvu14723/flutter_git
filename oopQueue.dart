void main(List<String> args) {
  Queue1 q = Queue1(capacity: 5);
  q.enqueue('1');
  q.enqueue('1');
  q.enqueue('3');
  q.dequeue();
  q.enqueue('5');
  q.hienThi();
}

class Queue1 {
  final int capacity;
  final List<String> list = <String>[];

  Queue1({required this.capacity});
  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  void enqueue(String data) {
    if (isFull()) {
      throw Exception('full');
    } else {
      list.add(data);
    }
  }

  void dequeue() {
    if (isEmpty()) {
      throw Exception('empty');
    } else {
      list.removeAt(0);
    }
  }

  void hienThi() {
    for (int i = 0; i < list.length; i++) {
      print('${list[i]}');
    }
  }
}
