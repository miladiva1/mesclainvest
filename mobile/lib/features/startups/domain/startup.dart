class Startup {
  final String id;
  final String name;
  final String stage;
  final String shortDescription;

  Startup({required this.id, required this.name, required this.stage, required this.shortDescription});

  factory Startup.fromMap(Map<String, dynamic> map) {
    return Startup(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      stage: map['stage'] ?? '',
      shortDescription: map['shortDescription'] ?? '',
    );
  }
}