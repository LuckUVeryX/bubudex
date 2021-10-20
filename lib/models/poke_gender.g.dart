// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_gender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeGender _$PokeGenderFromJson(Map<String, dynamic> json) => PokeGender(
      id: json['id'] as int,
      name: json['name'] as String,
      pokeSpeciesGender: PokeSpeciesGender.fromJson(
          json['pokeSpeciesGender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokeGenderToJson(PokeGender instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'pokeSpeciesGender': instance.pokeSpeciesGender,
    };

PokeSpeciesGender _$PokeSpeciesGenderFromJson(Map<String, dynamic> json) =>
    PokeSpeciesGender(
      rate: json['rate'] as int,
      pokeSpecies:
          PokeSpecies.fromJson(json['pokemon_species'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokeSpeciesGenderToJson(PokeSpeciesGender instance) =>
    <String, dynamic>{
      'rate': instance.rate,
      'pokemon_species': instance.pokeSpecies,
    };

PokeSpecies _$PokeSpeciesFromJson(Map<String, dynamic> json) => PokeSpecies(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PokeSpeciesToJson(PokeSpecies instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
