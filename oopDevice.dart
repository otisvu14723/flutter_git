void main(List<String> args) {
  Manufacturer samsunng = Manufacturer(idManu: 1, nameManu: 'samsung');
  Device s22Ultra = Device(
      id: 2, manufacturerName: 'samsung', name: 'phone', systemName: 'android');
  print('${s22Ultra.id}');
}

class Device {
  final int id;
  final String manufacturerName;
  final String name;
  final String systemName;

  Device({
    required this.id,
    required this.manufacturerName,
    required this.name,
    required this.systemName,
  });
  void infomation() {
    print('thong tin thiet bi: $id $manufacturerName $name $systemName}');
  }
}

class Manufacturer {
  final int idManu;
  final String nameManu;

  Manufacturer({required this.idManu, required this.nameManu});
}
