import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';
import 'models.dart';

part 'poke_data.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokemon)
class Pokemon {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @JsonKey(name: 'base_experience')
  @HiveField(2)
  final int baseExperience;

  @HiveField(3)
  final int height;

  @HiveField(4)
  final int weight;

  @HiveField(5)
  final List<PokeAbility> abilities;

  @HiveField(6)
  final List<NamedApiResource> forms;

  @HiveField(7)
  final List<PokeMove> moves;

  @HiveField(8)
  final NamedApiResource species;

  @HiveField(9)
  final List<PokeStat> stats;

  @HiveField(10)
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
@HiveType(typeId: HiveTypeId.pokeAbility)
class PokeAbility {
  @JsonKey(name: 'is_hidden')
  @HiveField(0)
  bool isHidden;

  @HiveField(1)
  int slot;

  @HiveField(2)
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
@HiveType(typeId: HiveTypeId.pokeMove)
class PokeMove {
  @HiveField(0)
  final NamedApiResource move;

  @JsonKey(name: 'version_group_details')
  @HiveField(1)
  final List<PokeMoveVersion> versionGroupDetails;

  PokeMove({required this.move, required this.versionGroupDetails});

  factory PokeMove.fromJson(Map<String, dynamic> json) =>
      _$PokeMoveFromJson(json);

  Map<String, dynamic> toJson() => _$PokeMoveToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokeMoveVersion)
class PokeMoveVersion {
  @JsonKey(name: 'move_learn_method')
  @HiveField(0)
  final NamedApiResource moveLearnMethod;

  @JsonKey(name: 'version_group')
  @HiveField(1)
  final NamedApiResource versionGroup;

  @JsonKey(name: 'level_learned_at')
  @HiveField(2)
  final int levelLearnedAt;

  PokeMoveVersion({
    required this.moveLearnMethod,
    required this.versionGroup,
    required this.levelLearnedAt,
  });

  factory PokeMoveVersion.fromJson(Map<String, dynamic> json) =>
      _$PokeMoveVersionFromJson(json);

  Map<String, dynamic> toJson() => _$PokeMoveVersionToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokeStat)
class PokeStat {
  @HiveField(0)
  final NamedApiResource stat;

  @HiveField(1)
  final int effort;

  @JsonKey(name: 'base_stat')
  @HiveField(2)
  final int baseStat;

  PokeStat({required this.stat, required this.effort, required this.baseStat});

  factory PokeStat.fromJson(Map<String, dynamic> json) =>
      _$PokeStatFromJson(json);

  Map<String, dynamic> toJson() => _$PokeStatToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokeType)
class PokeType {
  @HiveField(0)
  final int slot;

  @HiveField(1)
  final NamedApiResource type;

  PokeType({required this.slot, required this.type});

  factory PokeType.fromJson(Map<String, dynamic> json) =>
      _$PokeTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PokeTypeToJson(this);
}
