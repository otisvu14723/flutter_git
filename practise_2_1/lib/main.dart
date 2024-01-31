void main(List<String> args) {
  /*Ví dụ dưới đây có 3 lỗi. Hãy tìm và sửa hết 3 lỗi này. Nhớ đọc ví dụ về ... nhé mọi người.*/
  var arrs = ["-1", "1", "2", null, "3", "4", "5", "6", "7"];
  Map<dynamic, List<String?>?>? sMap = {
    1: null,
    2: [],
    3: ["x", "y", "z"]
  };
  Map<dynamic, List<dynamic>?>? map = {
    "first": ["a", "b", "c", "d"]
  };
  map.addAll(sMap);
  List<String> arrsToInt = arrs.map((e) => e.toString()).toList();
  List<int?> arrsToInt1 = arrsToInt.map((e) => int.tryParse(e)).toList();
  map["second"] = arrsToInt1;
  map["third"] = sMap.values.last!.sublist(1);
  /*Ví dụ về ...
  Cách sử dụng: [...Iterable]
  Khi sử dụng ... sẽ lấy toàn bộ phần tử của Iterable add vào trong []
  ví dụ: 
  var a = [1,2,3];
  var b = [4,5,6];
  var result = [...a, ...b] // sẽ cho ra result = [1,2,3,4,5,6]*/
  map["fourth"] = [
    ...arrsToInt
        .map((e) => int.tryParse(e))
        .where((e) => e != null && e % 2 == 1),
    ...arrsToInt.where((e) => e == null),
    ...sMap[3]!.sublist(0, 2)
  ];

  print(map);
}
