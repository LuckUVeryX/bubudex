// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeData _$PokeDataFromJson(Map<String, dynamic> json) => PokeData(
      species: Species.fromJson(json['species'] as Map<String, dynamic>),
      height: json['height'] as int,
      weight: json['weight'] as int,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbility.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExp: json['base_experience'] as int,
    );

Map<String, dynamic> _$PokeDataToJson(PokeData instance) => <String, dynamic>{
      'species': instance.species,
      'height': instance.height,
      'weight': instance.weight,
      'abilities': instance.abilities,
      'stats': instance.stats,
      'base_experience': instance.baseExp,
    };

PokemonStat _$PokemonStatFromJson(Map<String, dynamic> json) => PokemonStat(
      stat: Stat.fromJson(json['stat'] as Map<String, dynamic>),
      effort: json['effort'] as int,
    );

Map<String, dynamic> _$PokemonStatToJson(PokemonStat instance) =>
    <String, dynamic>{
      'stat': instance.stat,
      'effort': instance.effort,
    };

Stat _$StatFromJson(Map<String, dynamic> json) => Stat(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$StatToJson(Stat instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Species _$SpeciesFromJson(Map<String, dynamic> json) => Species(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

PokemonAbility _$PokemonAbilityFromJson(Map<String, dynamic> json) =>
    PokemonAbility(
      slot: json['slot'] as int,
      ability: Ability.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonAbilityToJson(PokemonAbility instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'ability': instance.ability,
    };

Ability _$AbilityFromJson(Map<String, dynamic> json) => Ability(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
