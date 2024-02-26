void main(List<String> args) {
  Queue2 q = Queue2(capacity: 5);
  q.enqueue(3);
  q.enqueue('ewr');
  q.enqueue(4);
  q.dequeue();
  q.enqueue('5');
  q.hienThi();
}

class Queue2<T> {
  final int capacity;
  final List<T> list = [];

  Queue2({required this.capacity});
  bool isFull() {
    return list.length == capacity;
  }

  bool isEmpty() {
    return list.isEmpty;
  }

  void enqueue(T data) {
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
