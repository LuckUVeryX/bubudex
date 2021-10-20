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
          .map((e) => Abilities.fromJson(e as Map<String, dynamic>))
          .toList(),
      effort: json['effort'] as int,
      baseExp: json['base_experience'] as int,
    );

Map<String, dynamic> _$PokeDataToJson(PokeData instance) => <String, dynamic>{
      'species': instance.species,
      'height': instance.height,
      'weight': instance.weight,
      'abilities': instance.abilities,
      'effort': instance.effort,
      'base_experience': instance.baseExp,
    };

Species _$SpeciesFromJson(Map<String, dynamic> json) => Species(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Abilities _$AbilitiesFromJson(Map<String, dynamic> json) => Abilities(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$AbilitiesToJson(Abilities instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
