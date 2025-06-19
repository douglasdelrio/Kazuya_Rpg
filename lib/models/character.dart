class Character {
  String name;
  int age;
  String characterClass;
  String background;
  Map<String, int> stats;

  Character({
    required this.name,
    required this.age,
    required this.characterClass,
    required this.background,
    required this.stats,
  });

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
    'characterClass': characterClass,
    'background': background,
    'stats': stats,
  };

  static Character fromJson(Map<String, dynamic> json) => Character(
    name: json['name'],
    age: json['age'],
    characterClass: json['characterClass'],
    background: json['background'],
    stats: Map<String, int>.from(json['stats']),
  );
}
