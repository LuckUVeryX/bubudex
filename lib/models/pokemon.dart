import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';

part 'pokemon.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokemon)
class Pokemon {
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

  Pokemon({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.height,
    required this.weight,
    required this.types,
    required this.typeDefences,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.typeDefenses)
class TypeDefences {
  @HiveField(40)
  final double? normal;

  @HiveField(41)
  final double? fire;

  @HiveField(42)
  final double? water;

  @HiveField(43)
  final double? electric;

  @HiveField(44)
  final double? grass;

  @HiveField(45)
  final double? ice;

  @HiveField(46)
  final double? fighting;

  @HiveField(47)
  final double? poison;

  @HiveField(48)
  final double? ground;

  @HiveField(49)
  final double? flying;

  @HiveField(50)
  final double? psychic;

  @HiveField(51)
  final double? bug;

  @HiveField(52)
  final double? rock;

  @HiveField(53)
  final double? ghost;

  @HiveField(54)
  final double? dragon;

  @JsonKey(name: 'darl')
  @HiveField(55)
  final double? dark;

  @HiveField(56)
  final double? steel;

  @HiveField(57)
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

  Map<PokeType, double?> toMap() {
    return <PokeType, double?>{
      PokeType.normal: normal,
      PokeType.fire: fire,
      PokeType.water: water,
      PokeType.electric: electric,
      PokeType.grass: grass,
      PokeType.ice: ice,
      PokeType.fighting: fighting,
      PokeType.poison: poison,
      PokeType.ground: ground,
      PokeType.flying: flying,
      PokeType.psychic: psychic,
      PokeType.bug: bug,
      PokeType.rock: rock,
      PokeType.ghost: ghost,
      PokeType.dragon: dragon,
      PokeType.dark: dark,
      PokeType.steel: steel,
      PokeType.fairy: fairy,
    };
  }
}
