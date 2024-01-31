void main(List<String> args) {
  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];

  String result =
      "${arr[3].toUpperCase().substring(0, 1)}${arr[3].substring(1)}"
      " ${arr[5]} ${arr[4]} ${arr[9][1]} ${arr[8][true]} ${arr[8][1]}"
      " ${arr[9][0]} ${arr[1]} ${arr[9][2]} ${Capitalize(arr.last["flutter"])}: ${arr[8][false].toUpperCase().substring(0, 10)} ${arr[10]}";

  print(result);
}

String Capitalize(String st) {
  if (st.isEmpty) {
    return "";
  } else
    return st[0].toUpperCase() + st.substring(1);
}
