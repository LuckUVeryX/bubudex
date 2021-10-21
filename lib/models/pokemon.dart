import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';

part 'pokemon.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokeSummary)
class PokeSummary {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final String image;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final double height;

  @HiveField(5)
  final double weight;

  @HiveField(7)
  final List<String> types;

  @HiveField(10)
  final TypeDefences typeDefences;

  PokeSummary({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.height,
    required this.weight,
    required this.types,
    required this.typeDefences,
  });

  factory PokeSummary.fromJson(Map<String, dynamic> json) =>
      _$PokeSummaryFromJson(json);

  Map<String, dynamic> toJson() => _$PokeSummaryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.typeDefenses)
class TypeDefences {
  @HiveField(0)
  final double? normal;

  @HiveField(1)
  final double? fire;

  @HiveField(2)
  final double? water;

  @HiveField(3)
  final double? electric;

  @HiveField(4)
  final double? grass;

  @HiveField(5)
  final double? ice;

  @HiveField(6)
  final double? fighting;

  @HiveField(7)
  final double? poison;

  @HiveField(8)
  final double? ground;

  @HiveField(9)
  final double? flying;

  @HiveField(10)
  final double? psychic;

  @HiveField(11)
  final double? bug;

  @HiveField(12)
  final double? rock;

  @HiveField(13)
  final double? ghost;

  @HiveField(14)
  final double? dragon;

  @JsonKey(name: 'darl')
  @HiveField(15)
  final double? dark;

  @HiveField(16)
  final double? steel;

  @HiveField(17)
  final double? fairy;

  TypeDefences({
    required this.normal,
    required this.fire,
    required this.water,
    required this.electric,
    required this.grass,
    required this.ice,
    required this.fighting,
    required this.poison,
    required this.ground,
    required this.flying,
    required this.psychic,
    required this.bug,
    required this.rock,
    required this.ghost,
    required this.dragon,
    required this.dark,
    required this.steel,
    required this.fairy,
  });

  factory TypeDefences.fromJson(Map<String, dynamic> json) =>
      _$TypeDefencesFromJson(json);

  Map<String, dynamic> toJson() => _$TypeDefencesToJson(this);

  Map<PokeTypes, double?> toMap() {
    return <PokeTypes, double?>{
      PokeTypes.normal: normal,
      PokeTypes.fire: fire,
      PokeTypes.water: water,
      PokeTypes.electric: electric,
      PokeTypes.grass: grass,
      PokeTypes.ice: ice,
      PokeTypes.fighting: fighting,
      PokeTypes.poison: poison,
      PokeTypes.ground: ground,
      PokeTypes.flying: flying,
      PokeTypes.psychic: psychic,
      PokeTypes.bug: bug,
      PokeTypes.rock: rock,
      PokeTypes.ghost: ghost,
      PokeTypes.dragon: dragon,
      PokeTypes.dark: dark,
      PokeTypes.steel: steel,
      PokeTypes.fairy: fairy,
    };
  }
}
