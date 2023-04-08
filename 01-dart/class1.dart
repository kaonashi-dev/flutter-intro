void main() {
  final superman = Hero(name: 'Clark Kent', power: 'Súper fuerza');
  print(superman);
  print(superman.name);
  print(superman.power);
  print(superman);
  print(superman.toString());
}

class Hero {
  String name;
  String power;

  Hero({
    required this.name,
    this.power = 'Sin poder',
  }) {}

  @override
  String toString() {
    return '$name - $power';
  }
}
