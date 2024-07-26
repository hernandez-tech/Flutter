void main() {
  final Map<dynamic, dynamic> pokemon = {
    'name': 'Pikachu',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['inmortal', 'safe'],
    'sprites': <int, String> {1: 'front/pikachu.png', 2: 'back/pikachu.png'}
  };

  print("Name: ${pokemon['name']}");
  print("HP: ${pokemon['hp']}");
  print("Abilities: ${pokemon['abilities'][0]}");
  print("Sprites Back: ${pokemon['sprites'][2]}");
  print("Sprites Front: ${pokemon['sprites'][1]}");
}
