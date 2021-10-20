import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';

part 'pokemon.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokemon)
class Pokemon {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String image;

  @HiveField(3)
  double height;

  @HiveField(4)
  double weight;

  @HiveField(5)
  List<String> types;

  @HiveField(6)
  TypeDefences typeDefences;

  Pokemon({
    required this.id,
    required this.name,
    required this.image,
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
  @HiveField(6)
  double? normal;

  @HiveField(7)
  double? fire;

  @HiveField(8)
  double? water;

  @HiveField(9)
  double? electric;

  @HiveField(10)
  double? grass;

  @HiveField(11)
  double? ice;

  @HiveField(12)
  double? fighting;

  @HiveField(13)
  double? poison;

  @HiveField(14)
  double? ground;

  @HiveField(15)
  double? flying;

  @HiveField(16)
  double? psychic;

  @HiveField(17)
  double? bug;

  @HiveField(18)
  double? rock;

  @HiveField(19)
  double? ghost;

  @HiveField(20)
  double? dragon;

  @JsonKey(name: 'darl')
  @HiveField(21)
  double? dark;

  @HiveField(22)
  double? steel;

  @HiveField(23)
  double? fairy;

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
