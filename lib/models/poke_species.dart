import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';
import 'models.dart';

part 'poke_species.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokeSpecies)
class PokeSpecies {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final int order;

  @HiveField(3)
  @JsonKey(name: 'gender_rate')
  final int genderRate;

  @HiveField(4)
  @JsonKey(name: 'capture_rate')
  final int captureRate;

  @HiveField(5)
  @JsonKey(name: 'base_happiness')
  final int baseHappiness;

  @HiveField(6)
  @JsonKey(name: 'is_baby')
  final bool isBaby;

  @HiveField(7)
  @JsonKey(name: 'is_legendary')
  final bool isLegendary;

  @HiveField(8)
  @JsonKey(name: 'is_mythical')
  final bool isMythical;

  @HiveField(9)
  @JsonKey(name: 'hatch_counter')
  final int hatchCounter;

  @HiveField(10)
  @JsonKey(name: 'has_gender_differences')
  final bool hasGenderDifferences;

  @HiveField(11)
  @JsonKey(name: 'forms_switchable')
  final bool formsSwitchable;

  @HiveField(12)
  @JsonKey(name: 'growth_rate')
  final NamedApiResource growthRate;

  @HiveField(13)
  @JsonKey(name: 'pokedex_numbers')
  final List<PokeSpeciesDexEntry> pokedexNumbers;

  @HiveField(14)
  @JsonKey(name: 'egg_groups')
  final List<NamedApiResource> eggGroups;

  @HiveField(15)
  final NamedApiResource color;

  @HiveField(16)
  final NamedApiResource shape;

  @HiveField(17)
  @JsonKey(name: 'evolves_from_species')
  final NamedApiResource? evolvesFromSpecies;

  @HiveField(18)
  @JsonKey(name: 'evolution_chain')
  final ApiResource evolutionChain;

  @HiveField(19)
  final NamedApiResource habitat;

  @HiveField(20)
  final NamedApiResource generation;

  @HiveField(21)
  final List<Name> names;

  @HiveField(22)
  @JsonKey(name: 'pal_park_encounters')
  final List<PalParkEncounterArea> palParkEncounters;

  @HiveField(23)
  @JsonKey(name: 'flavor_text_entries')
  final List<FlavorText> flavorTextEntries;

  @HiveField(24)
  @JsonKey(name: 'form_descriptions')
  final List<Description> formDescriptions;

  @HiveField(25)
  final List<Genus> genera;

  @HiveField(26)
  final List<PokemonSpeciesVariety> varieties;

  PokeSpecies({
    required this.id,
    required this.name,
    required this.order,
    required this.genderRate,
    required this.captureRate,
    required this.baseHappiness,
    required this.isBaby,
    required this.isLegendary,
    required this.isMythical,
    required this.hatchCounter,
    required this.hasGenderDifferences,
    required this.formsSwitchable,
    required this.growthRate,
    required this.pokedexNumbers,
    required this.eggGroups,
    required this.color,
    required this.shape,
    this.evolvesFromSpecies,
    required this.evolutionChain,
    required this.habitat,
    required this.generation,
    required this.names,
    required this.palParkEncounters,
    required this.flavorTextEntries,
    required this.formDescriptions,
    required this.genera,
    required this.varieties,
  });

  factory PokeSpecies.fromJson(Map<String, dynamic> json) =>
      _$PokeSpeciesFromJson(json);

  Map<String, dynamic> toJson() => _$PokeSpeciesToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokeSpeciesDexEntry)
class PokeSpeciesDexEntry {
  @HiveField(0)
  @JsonKey(name: 'entry_number')
  final int entryNumber;

  @HiveField(1)
  final NamedApiResource pokedex;

  PokeSpeciesDexEntry({required this.entryNumber, required this.pokedex});

  factory PokeSpeciesDexEntry.fromJson(Map<String, dynamic> json) =>
      _$PokeSpeciesDexEntryFromJson(json);

  Map<String, dynamic> toJson() => _$PokeSpeciesDexEntryToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.palParkEncounterArea)
class PalParkEncounterArea {
  @HiveField(0)
  @JsonKey(name: 'base_score')
  final int baseScore;

  @HiveField(1)
  final int rate;

  @HiveField(2)
  @JsonKey(name: 'area')
  final NamedApiResource palParkArea;

  PalParkEncounterArea({
    required this.baseScore,
    required this.rate,
    required this.palParkArea,
  });

  factory PalParkEncounterArea.fromJson(Map<String, dynamic> json) =>
      _$PalParkEncounterAreaFromJson(json);

  Map<String, dynamic> toJson() => _$PalParkEncounterAreaToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokemonSpeciesVariety)
class PokemonSpeciesVariety {
  @HiveField(0)
  @JsonKey(name: 'is_default')
  final bool isDefault;

  @HiveField(1)
  final NamedApiResource pokemon;

  PokemonSpeciesVariety({required this.isDefault, required this.pokemon});

  factory PokemonSpeciesVariety.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesVarietyFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonSpeciesVarietyToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.genus)
class Genus {
  @HiveField(0)
  final String genus;

  @HiveField(1)
  final NamedApiResource language;

  Genus({required this.genus, required this.language});

  factory Genus.fromJson(Map<String, dynamic> json) => _$GenusFromJson(json);

  Map<String, dynamic> toJson() => _$GenusToJson(this);
}
