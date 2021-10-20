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

  @JsonKey(name: 'abilities')
  final List<PokemonAbility> abilities;

  final List<PokemonStat> stats;

  @JsonKey(name: 'base_experience')
  final int baseExp;

  PokeData({
    required this.species,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.stats,
    required this.baseExp,
  });

  factory PokeData.fromJson(Map<String, dynamic> json) =>
      _$PokeDataFromJson(json);

  Map<String, dynamic> toJson() => _$PokeDataToJson(this);
}

@JsonSerializable()
class PokemonStat {
  final Stat stat;

  final int effort;

  PokemonStat({required this.stat, required this.effort});

  factory PokemonStat.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonStatToJson(this);
}

@JsonSerializable()
class Stat extends NamedApiResource {
  Stat({required String name, required String url})
      : super(name: name, url: url);

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);

  Map<String, dynamic> toJson() => _$StatToJson(this);
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
class PokemonAbility {
  final int slot;

  final Ability ability;

  PokemonAbility({required this.slot, required this.ability});

  factory PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonAbilityToJson(this);
}

@JsonSerializable()
class Ability extends NamedApiResource {
  Ability({required String name, required String url})
      : super(name: name, url: url);

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}
