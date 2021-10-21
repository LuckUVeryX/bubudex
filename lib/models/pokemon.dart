import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';
import 'models.dart';

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
  String description;

  @HiveField(4)
  double height;

  @HiveField(5)
  double weight;

  @HiveField(6)
  String species;

  @HiveField(7)
  List<String> types;

  @HiveField(8)
  Training training;

  @HiveField(9)
  TypeDefences typeDefences;

  Pokemon({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.height,
    required this.weight,
    required this.species,
    required this.types,
    required this.training,
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
@HiveType(typeId: HiveTypeId.training)
class Training {
  @HiveField(10)
  String evYield;

  @HiveField(11)
  CatchRate catchRate;

  @HiveField(12)
  BaseFriendship baseFriendship;

  @HiveField(13)
  int? baseExp;

  @HiveField(14)
  String growthRate;

  Training({
    required this.evYield,
    required this.catchRate,
    required this.baseFriendship,
    this.baseExp,
    required this.growthRate,
  });

  factory Training.fromJson(Map<String, dynamic> json) =>
      _$TrainingFromJson(json);

  Map<String, dynamic> toJson() => _$TrainingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.catchRate)
class CatchRate extends NameValuePair {
  CatchRate({required int? value, required String text})
      : super(text: text, value: value);

  factory CatchRate.fromJson(Map<String, dynamic> json) =>
      _$CatchRateFromJson(json);

  Map<String, dynamic> toJson() => _$CatchRateToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.baseFriendship)
class BaseFriendship extends NameValuePair {
  BaseFriendship({required int? value, required String text})
      : super(text: text, value: value);

  factory BaseFriendship.fromJson(Map<String, dynamic> json) =>
      _$BaseFriendshipFromJson(json);

  Map<String, dynamic> toJson() => _$BaseFriendshipToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.typeDefenses)
class TypeDefences {
  @HiveField(20)
  double? normal;

  @HiveField(21)
  double? fire;

  @HiveField(22)
  double? water;

  @HiveField(23)
  double? electric;

  @HiveField(24)
  double? grass;

  @HiveField(25)
  double? ice;

  @HiveField(26)
  double? fighting;

  @HiveField(27)
  double? poison;

  @HiveField(28)
  double? ground;

  @HiveField(29)
  double? flying;

  @HiveField(30)
  double? psychic;

  @HiveField(31)
  double? bug;

  @HiveField(32)
  double? rock;

  @HiveField(33)
  double? ghost;

  @HiveField(34)
  double? dragon;

  @JsonKey(name: 'darl')
  @HiveField(35)
  double? dark;

  @HiveField(36)
  double? steel;

  @HiveField(37)
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
