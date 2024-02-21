void main(List<String> args) {
  Dog dog = const Dog(name: 'chó', age: 1);
  dog.walk();
  dog.sound();
  dog.isSleep();
  dog.eat();

  Fish fish = const Fish(name: 'cá', age: 3);
  fish.swim();
  fish.sound();
  fish.isSleep();
  fish.eat();

  Bird bird = const Bird(name: 'chim', age: 2);
  bird.fly();
  bird.sound();
  bird.isSleep();
  bird.eat();

  Duck duck = const Duck(name: 'vịt', age: 5);
  duck.walk();
  duck.swim();
  duck.fly();
  duck.sound();
  duck.isSleep();
  duck.eat();
}

class Animals {
  final String? name;
  final int? age;

  const Animals({required this.name, required this.age});

  void sound() {
    print('$name is making a sound');
  }

  void isSleep() {
    print('$name is sleeping');
  }

  void eat() {
    print('$name is eating');
  }
}

class Dog extends Animals {
  const Dog({required super.name, required super.age});
  void walk() {
    print('$name is walking');
  }

  @override
  void sound() {
    print('$name is barking');
  }
}

class Fish extends Animals {
  const Fish({required super.name, required super.age});
  void swim() {
    print('$name is swimming');
  }

  @override
  void sound() {
    print('$name can\'t make a sound');
  }
}

class Bird extends Animals {
  const Bird({required super.name, required super.age});

  void fly() {
    print('$name is flying');
  }

  @override
  void sound() {
    print('$name is chirping');
  }
}

class Duck extends Bird {
  const Duck({required super.name, required super.age});

  void walk() {
    print('$name is walking');
  }

  void swim() {
    print('$name is swimming');
  }

  @override
  void sound() {
    print('$name: Quack!');
  }
}
