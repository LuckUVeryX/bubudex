// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      id: json['id'] as int,
      name: json['name'] as String,
      baseExperience: json['base_experience'] as int,
      height: json['height'] as int,
      weight: json['weight'] as int,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokeAbility.fromJson(e as Map<String, dynamic>))
          .toList(),
      forms: NamedApiResource.fromJson(json['forms'] as Map<String, dynamic>),
      moves: (json['moves'] as List<dynamic>)
          .map((e) => PokeMove.fromJson(e as Map<String, dynamic>))
          .toList(),
      species:
          NamedApiResource.fromJson(json['species'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokeStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokeType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'base_experience': instance.baseExperience,
      'height': instance.height,
      'weight': instance.weight,
      'abilities': instance.abilities,
      'forms': instance.forms,
      'moves': instance.moves,
      'species': instance.species,
      'stats': instance.stats,
      'types': instance.types,
    };

PokeAbility _$PokeAbilityFromJson(Map<String, dynamic> json) => PokeAbility(
      isHidden: json['is_hidden'] as bool,
      slot: json['slot'] as int,
      ability:
          NamedApiResource.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokeAbilityToJson(PokeAbility instance) =>
    <String, dynamic>{
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
      'ability': instance.ability,
    };

PokeMove _$PokeMoveFromJson(Map<String, dynamic> json) => PokeMove(
      move: NamedApiResource.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['version_group_details'] as List<dynamic>)
          .map((e) => PokeMoveVersion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokeMoveToJson(PokeMove instance) => <String, dynamic>{
      'move': instance.move,
      'version_group_details': instance.versionGroupDetails,
    };

PokeMoveVersion _$PokeMoveVersionFromJson(Map<String, dynamic> json) =>
    PokeMoveVersion(
      moveLearnMethod: NamedApiResource.fromJson(
          json['move_learn_method'] as Map<String, dynamic>),
      versionGroup: NamedApiResource.fromJson(
          json['version_group'] as Map<String, dynamic>),
      levelLearnedAt: json['level_learned_at'] as int,
    );

Map<String, dynamic> _$PokeMoveVersionToJson(PokeMoveVersion instance) =>
    <String, dynamic>{
      'move_learn_method': instance.moveLearnMethod,
      'version_group': instance.versionGroup,
      'level_learned_at': instance.levelLearnedAt,
    };

PokeStat _$PokeStatFromJson(Map<String, dynamic> json) => PokeStat(
      stat: NamedApiResource.fromJson(json['stat'] as Map<String, dynamic>),
      effort: json['effort'] as int,
      baseStat: json['base_stat'] as int,
    );

Map<String, dynamic> _$PokeStatToJson(PokeStat instance) => <String, dynamic>{
      'stat': instance.stat,
      'effort': instance.effort,
      'base_stat': instance.baseStat,
    };

PokeType _$PokeTypeFromJson(Map<String, dynamic> json) => PokeType(
      slot: json['slot'] as int,
      type: NamedApiResource.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokeTypeToJson(PokeType instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
