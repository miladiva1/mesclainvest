// Vinícius
/* Explicação do código:
 *  
 *  */

class StartupModel {
  final String id;
  final String name;
  final String stage;
  final String sector;
  final String description;
  final double currentTokenPrice;
  final List<dynamic> partners;

  StartupModel({
    required this.id,
    required this.name,
    required this.stage,
    required this.sector,
    required this.description,
    required this.currentTokenPrice,
    required this.partners,
  });

  // A "mágica" que transforma o mapa do JSON em um Objeto Dart
  factory StartupModel.fromJson(Map<String, dynamic> json) {
    return StartupModel(
      id: json['id'] ?? '',
      name: json['name'] ?? 'Sem nome',
      stage: json['stage'] ?? '',
      sector: json['sector'] ?? '',
      description: json['description'] ?? '',
      currentTokenPrice: (json['current_token_price'] as num).toDouble(),
      partners: json['partners'] ?? [],
    );
  }
}