class StorySegment {
  final int id;
  final String text;
  final List<StoryOption> options;

  StorySegment({
    required this.id,
    required this.text,
    required this.options,
  });

  factory StorySegment.fromJson(Map<String, dynamic> json) {
    var optionsList = json["options"] as List;
    List<StoryOption> options = optionsList.map((i) => StoryOption.fromJson(i)).toList();

    return StorySegment(
      id: json["id"],
      text: json["text"],
      options: options,
    );
  }
}

class StoryOption {
  final String text;
  final int next;
  final String icon;
  final String color;
  final bool isWrongChoice; // New property

  StoryOption({
    required this.text,
    required this.next,
    required this.icon,
    required this.color,
    this.isWrongChoice = false, // Default to false
  });

  factory StoryOption.fromJson(Map<String, dynamic> json) {
    return StoryOption(
      text: json["text"],
      next: json["next"],
      icon: json["icon"],
      color: json["color"],
      isWrongChoice: json["isWrongChoice"] ?? false, // Read from JSON, default to false
    );
  }
}


