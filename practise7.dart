import 'dart:math';

class Student {
  String _nameStudent;

  Student(this._nameStudent);

  String get nameStudent => _nameStudent;

  set nameStudent(String value) {
    _nameStudent = value;
  }

  @override
  String toString() {
    return "Student's name: $nameStudent";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Student &&
          runtimeType == other.runtimeType &&
          _nameStudent == other._nameStudent;

  @override
  int get hashCode => _nameStudent.hashCode;
}

class Class {
  String _nameClass;
  int _slotMax;
  Set<Student> _listStudent = {};
  int _slotCurrent = 0;
  int _numberOfSessions;

  Class(this._nameClass, this._slotMax, this._listStudent,
      this._numberOfSessions) {
    if (this._numberOfSessions < 10) {
      throw ArgumentError('Số buổi học không được nhỏ hơn 10');
    }
  }

  remainMembers() {
    _slotCurrent = _listStudent.length;
    int slotMissing = _slotMax - _slotCurrent;
    return slotMissing;
  }

  //them cac hoc sinh vao
  addMembersRandom() {
    while (_listStudent.length < _slotMax) {
      String randomStudentName = generateRandomString(1);
      Student student = Student(randomStudentName);
      if (!_listStudent.contains(student)) {
        _listStudent.add(student);
      }
    }
  }

  //khoi tao mot String tu A -> Z
  String generateRandomString(int len) {
    final random = Random();
    final result = String.fromCharCodes(
        List.generate(len, (index) => random.nextInt(25) + 65));
    return result;
  }

  String get nameClass => _nameClass;

  set nameClass(String value) {
    _nameClass = value;
  }

  int get slotMax => _slotMax;

  int get slotCurrent => _slotCurrent;

  int get numberOfSessions => _numberOfSessions;

  set slotCurrent(int value) {
    _slotCurrent = value;
  }

  set slotMax(int value) {
    _slotMax = value;
  }

  set numberOfSessions(int value) {
    _numberOfSessions = value;
  }

  Set<Student> get listStudent => _listStudent;

  set listStudent(Set<Student> value) {
    _listStudent = value;
  }
}

class Android extends Class {
  Android(super.nameClass, super.slotMax, super.listStudent,
      super.numberOfSessions);
  //   // Đảm bảo số buổi học Android luôn nhiều hơn Flutter 5 buổi
  //   if (numberOfSessions < flutter  + 5) {
  //     throw ArgumentError(
  //         'Số buổi học Flutter phải nhỏ hơn số buổi học Android ít nhất 5 buổi');
  //   }
  // }
  void buildAndroid(Class classBA) {
    print("Build Android from ${classBA._nameClass} ");
  }
}

class Flutter extends Class {
  Flutter(super.nameClass, super.slotMax, super.listStudent,
      super.numberOfSessions);
  void buildAndroid(Class classBA) {
    print("Build Android from ${classBA._nameClass} ");
  }

  void buildIOS(Class classBIOS) {
    print("Build Android from ${classBIOS._nameClass} ");
  }

  void buildWeb(Class classBW) {
    print("Build Android from ${classBW._nameClass} ");
  }

  void buildDesktopApp(Class classBDA) {
    print("Build Android from ${classBDA._nameClass} ");
  }

  // int getNum() {
  //   return _numberOfSessions;
  // }
}

class IOS extends Class {
  IOS(super.nameClass, super.slotMax, super.listStudent,
      super.numberOfSessions);
  void buildIOS(Class classBIOS) {
    print("Build Android from ${classBIOS._nameClass} ");
  }
}

class Web extends Class {
  Web(super.nameClass, super.slotMax, super.listStudent,
      super.numberOfSessions);
  void buildWeb(Class classBW) {
    print("Build Android from ${classBW._nameClass} ");
  }
}

void updateWeb(Flutter f, Android a, IOS i, Web w) {
  f.numberOfSessions = w.numberOfSessions + 2;
  a.numberOfSessions = f.numberOfSessions + 5;
  i.numberOfSessions = a.numberOfSessions + 3;
}

void updateFlutter(Flutter f, Android a, IOS i, Web w) {
  if (f.numberOfSessions < 12) {
    throw ArgumentError('so buoi hoc can cap nhat toi thieu la 12');
  } else {
    w.numberOfSessions = f.numberOfSessions - 2;
    a.numberOfSessions = f.numberOfSessions + 5;
    i.numberOfSessions = a.numberOfSessions + 3;
  }
}

void updateAndroid(Flutter f, Android a, IOS i, Web w) {
  if (f.numberOfSessions < 17) {
    throw ArgumentError('so buoi hoc can cap nhat toi thieu la 17');
  } else {
    w.numberOfSessions = f.numberOfSessions - 7;
    f.numberOfSessions = a.numberOfSessions - 5;
    i.numberOfSessions = a.numberOfSessions + 3;
  }
}

void updateIOS(Flutter f, Android a, IOS i, Web w) {
  if (f.numberOfSessions < 20) {
    throw ArgumentError('so buoi hoc can cap nhat toi thieu la 20');
  } else {
    w.numberOfSessions = f.numberOfSessions - 7;
    f.numberOfSessions = a.numberOfSessions - 5;
    i.numberOfSessions = a.numberOfSessions - 3;
  }
}

void main(List<String> arguments) {
  //khoi tao cac hoc sinh
  Student a = Student("A");
  Student b = Student("B");
  Student c = Student("C");
  Student d = Student("D");
  Student e = Student("E");
  Student f = Student("F");

  //khoi tao danh sach sinh vien cua tung lop
  Set<Student> listStudentFlutter = {a, b};
  Set<Student> listStudentAndroid = {b, c, d};
  Set<Student> listStudentIOS = {d, e, f};
  Set<Student> listStudentWeb = {f};

  //khoi tao cac lop hoc
  Flutter flutter = Flutter("Flutter", 11, listStudentFlutter, 12);
  Android android = Android("Android", 12, listStudentAndroid, 14);
  IOS ios = IOS("IOS", 13, listStudentIOS, 15);
  Web web = Web("Web", 14, listStudentWeb, 10);

  //test ham remainMembers()
  print("Số học sinh còn thiếu của lớp Flutter: ${flutter.remainMembers()}");
  updateWeb(flutter, android, ios, web);
  print(
      '${flutter.numberOfSessions} ${android.numberOfSessions} ${ios.numberOfSessions} ${web.numberOfSessions}');
  //Them cac hoc sinh con thieu
  flutter.addMembersRandom();
  android.addMembersRandom();
  ios.addMembersRandom();
  web.addMembersRandom();

  //in ra danh sach cac lop sau khi da them tat ca hoc sinh
  print("Danh sách lớp học Flutter: ${flutter.listStudent.toString()}");
  print("");
  print("Danh sách lớp học Android: ${android.listStudent.toString()}");
  print("");
  print("Danh sách lớp học IOS: ${ios.listStudent.toString()}");
  print("");
  print("Danh sách lớp học Web: ${web.listStudent.toString()}");
  print("");
}
