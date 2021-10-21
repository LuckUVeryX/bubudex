// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeSpecies _$PokeSpeciesFromJson(Map<String, dynamic> json) => PokeSpecies(
      id: json['id'] as int,
      name: json['name'] as String,
      order: json['order'] as int,
      genderRate: json['gender_rate'] as int,
      captureRate: json['capture_rate'] as int,
      baseHappiness: json['base_happiness'] as int,
      isBaby: json['is_baby'] as bool,
      isLegendary: json['is_legendary'] as bool,
      isMythical: json['is_mythical'] as bool,
      hatchCounter: json['hatch_counter'] as int,
      hasGenderDifferences: json['has_gender_differences'] as bool,
      formsSwitchable: json['forms_switchable'] as bool,
      growthRate: NamedApiResource.fromJson(
          json['growth_rate'] as Map<String, dynamic>),
      pokedexNumbers: (json['pokedex_numbers'] as List<dynamic>)
          .map((e) => PokeSpeciesDexEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      eggGroups: (json['egg_groups'] as List<dynamic>)
          .map((e) => NamedApiResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: NamedApiResource.fromJson(json['color'] as Map<String, dynamic>),
      shape: NamedApiResource.fromJson(json['shape'] as Map<String, dynamic>),
      evolvesFromSpecies: json['evolves_from_species'] == null
          ? null
          : NamedApiResource.fromJson(
              json['evolves_from_species'] as Map<String, dynamic>),
      evolutionChain:
          ApiResource.fromJson(json['evolution_chain'] as Map<String, dynamic>),
      habitat:
          NamedApiResource.fromJson(json['habitat'] as Map<String, dynamic>),
      generation:
          NamedApiResource.fromJson(json['generation'] as Map<String, dynamic>),
      names: (json['names'] as List<dynamic>)
          .map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
      palParkEncounters: (json['pal_park_encounters'] as List<dynamic>)
          .map((e) => PalParkEncounterArea.fromJson(e as Map<String, dynamic>))
          .toList(),
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => FlavorText.fromJson(e as Map<String, dynamic>))
          .toList(),
      formDescriptions: (json['form_descriptions'] as List<dynamic>)
          .map((e) => Description.fromJson(e as Map<String, dynamic>))
          .toList(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => Genus.fromJson(e as Map<String, dynamic>))
          .toList(),
      varieties: (json['varieties'] as List<dynamic>)
          .map((e) => PokemonSpeciesVariety.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokeSpeciesToJson(PokeSpecies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'gender_rate': instance.genderRate,
      'capture_rate': instance.captureRate,
      'base_happiness': instance.baseHappiness,
      'is_baby': instance.isBaby,
      'is_legendary': instance.isLegendary,
      'is_mythical': instance.isMythical,
      'hatch_counter': instance.hatchCounter,
      'has_gender_differences': instance.hasGenderDifferences,
      'forms_switchable': instance.formsSwitchable,
      'growth_rate': instance.growthRate,
      'pokedex_numbers': instance.pokedexNumbers,
      'egg_groups': instance.eggGroups,
      'color': instance.color,
      'shape': instance.shape,
      'evolves_from_species': instance.evolvesFromSpecies,
      'evolution_chain': instance.evolutionChain,
      'habitat': instance.habitat,
      'generation': instance.generation,
      'names': instance.names,
      'pal_park_encounters': instance.palParkEncounters,
      'flavor_text_entries': instance.flavorTextEntries,
      'form_descriptions': instance.formDescriptions,
      'genera': instance.genera,
      'varieties': instance.varieties,
    };

PokeSpeciesDexEntry _$PokeSpeciesDexEntryFromJson(Map<String, dynamic> json) =>
    PokeSpeciesDexEntry(
      entryNumber: json['entry_number'] as int,
      pokedex:
          NamedApiResource.fromJson(json['pokedex'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokeSpeciesDexEntryToJson(
        PokeSpeciesDexEntry instance) =>
    <String, dynamic>{
      'entry_number': instance.entryNumber,
      'pokedex': instance.pokedex,
    };

PalParkEncounterArea _$PalParkEncounterAreaFromJson(
        Map<String, dynamic> json) =>
    PalParkEncounterArea(
      baseScore: json['base_score'] as int,
      rate: json['rate'] as int,
      palParkArea:
          NamedApiResource.fromJson(json['area'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PalParkEncounterAreaToJson(
        PalParkEncounterArea instance) =>
    <String, dynamic>{
      'base_score': instance.baseScore,
      'rate': instance.rate,
      'area': instance.palParkArea,
    };

PokemonSpeciesVariety _$PokemonSpeciesVarietyFromJson(
        Map<String, dynamic> json) =>
    PokemonSpeciesVariety(
      isDefault: json['is_default'] as bool,
      pokemon:
          NamedApiResource.fromJson(json['pokemon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonSpeciesVarietyToJson(
        PokemonSpeciesVariety instance) =>
    <String, dynamic>{
      'is_default': instance.isDefault,
      'pokemon': instance.pokemon,
    };

Genus _$GenusFromJson(Map<String, dynamic> json) => Genus(
      genus: json['genus'] as String,
      language:
          NamedApiResource.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenusToJson(Genus instance) => <String, dynamic>{
      'genus': instance.genus,
      'language': instance.language,
    };
