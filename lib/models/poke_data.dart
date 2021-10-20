import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'poke_data.g.dart';

@JsonSerializable()
class PokeData {
  final Species species;

  /// decimeters
  final int height;

  /// hectograms
  final int weight;

  final List<Abilities> abilities;

  final int effort;

  @JsonKey(name: 'base_experience')
  final int baseExp;

  PokeData({
    required this.species,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.effort,
    required this.baseExp,
  });

  factory PokeData.fromJson(Map<String, dynamic> json) =>
      _$PokeDataFromJson(json);

  Map<String, dynamic> toJson() => _$PokeDataToJson(this);
}

@JsonSerializable()
class Species extends NamedApiResource {
  Species({required String name, required String url})
      : super(name: name, url: url);

  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);

  Map<String, dynamic> toJson() => _$SpeciesToJson(this);
}

@JsonSerializable()
class Abilities extends NamedApiResource {
  Abilities({required String name, required String url})
      : super(name: name, url: url);

  factory Abilities.fromJson(Map<String, dynamic> json) =>
      _$AbilitiesFromJson(json);

  Map<String, dynamic> toJson() => _$AbilitiesToJson(this);
}
