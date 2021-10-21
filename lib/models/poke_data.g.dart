// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeData _$PokeDataFromJson(Map<String, dynamic> json) => PokeData(
      id: json['id'] as int,
      name: json['name'] as String,
      height: json['height'] as int,
      weight: json['weight'] as int,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokeAbility.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokeDataToJson(PokeData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'abilities': instance.abilities,
    };

PokeAbility _$PokeAbilityFromJson(Map<String, dynamic> json) => PokeAbility(
      isHidden: json['is_hidden'] as bool,
      slot: json['slot'] as int,
      ability: Ability.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokeAbilityToJson(PokeAbility instance) =>
    <String, dynamic>{
      'is_hidden': instance.isHidden,
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
