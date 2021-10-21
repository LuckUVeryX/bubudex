import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'poke_data.g.dart';

@JsonSerializable()
class Pokemon {
  final int id;

  final String name;

  @JsonKey(name: 'base_experience')
  final int baseExperience;

  final int height;

  final int weight;

  final List<PokeAbility> abilities;

  final NamedApiResource forms;

  final List<PokeMove> moves;

  final NamedApiResource species;

  final List<PokeStat> stats;

  final List<PokeType> types;

  Pokemon({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.forms,
    required this.moves,
    required this.species,
    required this.stats,
    required this.types,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}

@JsonSerializable()
class PokeAbility {
  @JsonKey(name: 'is_hidden')
  bool isHidden;

  int slot;

  NamedApiResource ability;

  PokeAbility({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });

  factory PokeAbility.fromJson(Map<String, dynamic> json) =>
      _$PokeAbilityFromJson(json);

  Map<String, dynamic> toJson() => _$PokeAbilityToJson(this);
}

@JsonSerializable()
class PokeMove {
  final NamedApiResource move;

  @JsonKey(name: 'version_group_details')
  final List<PokeMoveVersion> versionGroupDetails;

  PokeMove({required this.move, required this.versionGroupDetails});

  factory PokeMove.fromJson(Map<String, dynamic> json) =>
      _$PokeMoveFromJson(json);

  Map<String, dynamic> toJson() => _$PokeMoveToJson(this);
}

@JsonSerializable()
class PokeMoveVersion {
  @JsonKey(name: 'move_learn_method')
  final NamedApiResource moveLearnMethod;

  @JsonKey(name: 'version_group')
  final NamedApiResource versionGroup;

  @JsonKey(name: 'level_learned_at')
  final int levelLearnedAt;

  PokeMoveVersion(
      {required this.moveLearnMethod,
      required this.versionGroup,
      required this.levelLearnedAt});

  factory PokeMoveVersion.fromJson(Map<String, dynamic> json) =>
      _$PokeMoveVersionFromJson(json);

  Map<String, dynamic> toJson() => _$PokeMoveVersionToJson(this);
}

@JsonSerializable()
class PokeStat {
  final NamedApiResource stat;

  final int effort;

  @JsonKey(name: 'base_stat')
  final int baseStat;

  PokeStat({required this.stat, required this.effort, required this.baseStat});

  factory PokeStat.fromJson(Map<String, dynamic> json) =>
      _$PokeStatFromJson(json);

  Map<String, dynamic> toJson() => _$PokeStatToJson(this);
}

@JsonSerializable()
class PokeType {
  final int slot;

  final NamedApiResource type;

  PokeType({required this.slot, required this.type});

  factory PokeType.fromJson(Map<String, dynamic> json) =>
      _$PokeTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PokeTypeToJson(this);
}
