import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'poke_species.g.dart';

@JsonSerializable()
class PokeSpecies {
  final int id;

  final String name;

  final int order;

  @JsonKey(name: 'gender_rate')
  final int genderRate;

  @JsonKey(name: 'capture_rate')
  final int captureRate;

  @JsonKey(name: 'base_happiness')
  final int baseHappiness;

  @JsonKey(name: 'is_baby')
  final bool isBaby;

  @JsonKey(name: 'is_legendary')
  final bool isLegendary;

  @JsonKey(name: 'is_mythical')
  final bool isMythical;

  @JsonKey(name: 'hatch_counter')
  final int hatchCounter;

  @JsonKey(name: 'has_gender_differences')
  final bool hasGenderDifferences;

  @JsonKey(name: 'forms_switchable')
  final bool formsSwitchable;

  @JsonKey(name: 'growth_rate')
  final NamedApiResource growthRate;

  @JsonKey(name: 'pokedex_numbers')
  final List<PokeSpeciesDexEntry> pokedexNumbers;

  @JsonKey(name: 'egg_groups')
  final List<NamedApiResource> eggGroups;

  final NamedApiResource color;

  final NamedApiResource shape;

  @JsonKey(name: 'evolves_from_species')
  final NamedApiResource? evolvesFromSpecies;

  @JsonKey(name: 'evolution_chain')
  final ApiResource evolutionChain;

  final NamedApiResource habitat;

  final NamedApiResource generation;

  final List<Name> names;

  @JsonKey(name: 'pal_park_encounters')
  final List<PalParkEncounterArea> palParkEncounters;

  @JsonKey(name: 'flavor_text_entries')
  final List<FlavorText> flavorTextEntries;

  @JsonKey(name: 'form_descriptions')
  final List<Description> formDescriptions;

  final List<Genus> genera;

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
class PokeSpeciesDexEntry {
  @JsonKey(name: 'entry_number')
  final int entryNumber;

  final NamedApiResource pokedex;

  PokeSpeciesDexEntry({required this.entryNumber, required this.pokedex});

  factory PokeSpeciesDexEntry.fromJson(Map<String, dynamic> json) =>
      _$PokeSpeciesDexEntryFromJson(json);

  Map<String, dynamic> toJson() => _$PokeSpeciesDexEntryToJson(this);
}

@JsonSerializable()
class PalParkEncounterArea {
  @JsonKey(name: 'base_score')
  final int baseScore;

  final int rate;

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
class PokemonSpeciesVariety {
  @JsonKey(name: 'is_default')
  final bool isDefault;

  final NamedApiResource pokemon;

  PokemonSpeciesVariety({required this.isDefault, required this.pokemon});

  factory PokemonSpeciesVariety.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesVarietyFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonSpeciesVarietyToJson(this);
}

@JsonSerializable()
class Genus {
  final String genus;

  final NamedApiResource language;

  Genus({required this.genus, required this.language});

  factory Genus.fromJson(Map<String, dynamic> json) => _$GenusFromJson(json);

  Map<String, dynamic> toJson() => _$GenusToJson(this);
}
