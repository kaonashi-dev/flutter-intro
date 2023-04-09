void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Clark Kent',
    'power': 'Súper fuerza',
    'isAlive': true,
  };

  // final superman = Hero(name: 'Clark Kent', power: 'Súper fuerza', isAlive: true);
  final superman = Hero.fromJson(rawJson);
  print(superman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.isAlive,
    this.power = 'Sin poder',
  }) {}

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name',
        power = json['power'] ?? 'No power',
        isAlive = json['isAlive'] ?? 'No alive';

  @override
  String toString() {
    return '$name - $power - ${isAlive ? 'Yes' : 'No'}';
  }
}
