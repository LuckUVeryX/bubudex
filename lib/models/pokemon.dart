import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';
import 'models.dart';

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

  @HiveField(6)
  final String species;

  @HiveField(7)
  final List<String> types;

  @HiveField(8)
  final Training training;

  @HiveField(9)
  final Breedings breedings;

  @HiveField(10)
  final TypeDefences typeDefences;

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
    required this.breedings,
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
  @HiveField(11)
  final String evYield;

  @HiveField(12)
  final CatchRate catchRate;

  @HiveField(13)
  final BaseFriendship baseFriendship;

  @HiveField(14)
  final int? baseExp;

  @HiveField(15)
  final String growthRate;

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
@HiveType(typeId: HiveTypeId.breedings)
class Breedings {
  @HiveField(30)
  final List<String> eggGroups;

  @HiveField(31)
  final Gender gender;

  @HiveField(32)
  final EggCycles eggCycles;

  Breedings({
    required this.eggGroups,
    required this.gender,
    required this.eggCycles,
  });

  factory Breedings.fromJson(Map<String, dynamic> json) =>
      _$BreedingsFromJson(json);

  Map<String, dynamic> toJson() => _$BreedingsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.gender)
class Gender {
  @HiveField(33)
  final double? male;

  @HiveField(34)
  final double? female;

  Gender({required this.male, required this.female});

  factory Gender.fromJson(Map<String, dynamic> json) => _$GenderFromJson(json);

  Map<String, dynamic> toJson() => _$GenderToJson(this);

  bool get isNull => male == null || female == null;

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.eggCycles)
class EggCycles extends NameValuePair {
  EggCycles({required String text, required int value})
      : super(text: text, value: value);

  factory EggCycles.fromJson(Map<String, dynamic> json) =>
      _$EggCyclesFromJson(json);

  Map<String, dynamic> toJson() => _$EggCyclesToJson(this);

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
