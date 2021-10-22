// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_evolution.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokeEvolutionAdapter extends TypeAdapter<PokeEvolution> {
  @override
  final int typeId = 22;

  @override
  PokeEvolution read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokeEvolution(
      id: fields[0] as int,
      babyTriggerItem: fields[1] as NamedApiResource?,
      chain: fields[2] as ChainLink,
    );
  }

  @override
  void write(BinaryWriter writer, PokeEvolution obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.babyTriggerItem)
      ..writeByte(2)
      ..write(obj.chain);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeEvolutionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChainLinkAdapter extends TypeAdapter<ChainLink> {
  @override
  final int typeId = 23;

  @override
  ChainLink read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChainLink(
      isBaby: fields[0] as bool,
      species: fields[1] as NamedApiResource,
      evolutionDetails: (fields[2] as List?)?.cast<EvolutionDetail>(),
      evolvesTo: (fields[3] as List).cast<ChainLink>(),
    );
  }

  @override
  void write(BinaryWriter writer, ChainLink obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.isBaby)
      ..writeByte(1)
      ..write(obj.species)
      ..writeByte(2)
      ..write(obj.evolutionDetails)
      ..writeByte(3)
      ..write(obj.evolvesTo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChainLinkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EvolutionDetailAdapter extends TypeAdapter<EvolutionDetail> {
  @override
  final int typeId = 24;

  @override
  EvolutionDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EvolutionDetail(
      item: fields[0] as NamedApiResource?,
      trigger: fields[1] as NamedApiResource,
      gender: fields[2] as int?,
      heldItem: fields[3] as NamedApiResource?,
      knownMove: fields[4] as NamedApiResource?,
      knownMoveType: fields[5] as NamedApiResource?,
      location: fields[6] as NamedApiResource?,
      minLevel: fields[7] as int?,
      minHappiness: fields[8] as int?,
      minBeauty: fields[9] as int?,
      minAffection: fields[10] as int?,
      needsOverworldRain: fields[11] as bool,
      partySpecies: fields[12] as NamedApiResource?,
      partyType: fields[13] as NamedApiResource?,
      relativePhysicalStats: fields[14] as int?,
      timeOfDay: fields[15] as String?,
      tradeSpecies: fields[16] as NamedApiResource?,
      turnUpsideDown: fields[17] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, EvolutionDetail obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.item)
      ..writeByte(1)
      ..write(obj.trigger)
      ..writeByte(2)
      ..write(obj.gender)
      ..writeByte(3)
      ..write(obj.heldItem)
      ..writeByte(4)
      ..write(obj.knownMove)
      ..writeByte(5)
      ..write(obj.knownMoveType)
      ..writeByte(6)
      ..write(obj.location)
      ..writeByte(7)
      ..write(obj.minLevel)
      ..writeByte(8)
      ..write(obj.minHappiness)
      ..writeByte(9)
      ..write(obj.minBeauty)
      ..writeByte(10)
      ..write(obj.minAffection)
      ..writeByte(11)
      ..write(obj.needsOverworldRain)
      ..writeByte(12)
      ..write(obj.partySpecies)
      ..writeByte(13)
      ..write(obj.partyType)
      ..writeByte(14)
      ..write(obj.relativePhysicalStats)
      ..writeByte(15)
      ..write(obj.timeOfDay)
      ..writeByte(16)
      ..write(obj.tradeSpecies)
      ..writeByte(17)
      ..write(obj.turnUpsideDown);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EvolutionDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeEvolution _$PokeEvolutionFromJson(Map<String, dynamic> json) =>
    PokeEvolution(
      id: json['id'] as int,
      babyTriggerItem: json['baby_trigger_item'] == null
          ? null
          : NamedApiResource.fromJson(
              json['baby_trigger_item'] as Map<String, dynamic>),
      chain: ChainLink.fromJson(json['chain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokeEvolutionToJson(PokeEvolution instance) =>
    <String, dynamic>{
      'id': instance.id,
      'baby_trigger_item': instance.babyTriggerItem,
      'chain': instance.chain,
    };

ChainLink _$ChainLinkFromJson(Map<String, dynamic> json) => ChainLink(
      isBaby: json['is_baby'] as bool,
      species:
          NamedApiResource.fromJson(json['species'] as Map<String, dynamic>),
      evolutionDetails: (json['evolution_details'] as List<dynamic>?)
          ?.map((e) => EvolutionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      evolvesTo: (json['evolves_to'] as List<dynamic>)
          .map((e) => ChainLink.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChainLinkToJson(ChainLink instance) => <String, dynamic>{
      'is_baby': instance.isBaby,
      'species': instance.species,
      'evolution_details': instance.evolutionDetails,
      'evolves_to': instance.evolvesTo,
    };

EvolutionDetail _$EvolutionDetailFromJson(Map<String, dynamic> json) =>
    EvolutionDetail(
      item: json['item'] == null
          ? null
          : NamedApiResource.fromJson(json['item'] as Map<String, dynamic>),
      trigger:
          NamedApiResource.fromJson(json['trigger'] as Map<String, dynamic>),
      gender: json['gender'] as int?,
      heldItem: json['held_item'] == null
          ? null
          : NamedApiResource.fromJson(
              json['held_item'] as Map<String, dynamic>),
      knownMove: json['known_move'] == null
          ? null
          : NamedApiResource.fromJson(
              json['known_move'] as Map<String, dynamic>),
      knownMoveType: json['known_move_type'] == null
          ? null
          : NamedApiResource.fromJson(
              json['known_move_type'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : NamedApiResource.fromJson(json['location'] as Map<String, dynamic>),
      minLevel: json['min_level'] as int?,
      minHappiness: json['min_happiness'] as int?,
      minBeauty: json['min_beauty'] as int?,
      minAffection: json['min_affection'] as int?,
      needsOverworldRain: json['needs_overworld_rain'] as bool,
      partySpecies: json['party_species'] == null
          ? null
          : NamedApiResource.fromJson(
              json['party_species'] as Map<String, dynamic>),
      partyType: json['party_type'] == null
          ? null
          : NamedApiResource.fromJson(
              json['party_type'] as Map<String, dynamic>),
      relativePhysicalStats: json['relative_physical_stats'] as int?,
      timeOfDay: json['time_of_day'] as String?,
      tradeSpecies: json['trade_species'] == null
          ? null
          : NamedApiResource.fromJson(
              json['trade_species'] as Map<String, dynamic>),
      turnUpsideDown: json['turn_upside_down'] as bool,
    );

Map<String, dynamic> _$EvolutionDetailToJson(EvolutionDetail instance) =>
    <String, dynamic>{
      'item': instance.item,
      'trigger': instance.trigger,
      'gender': instance.gender,
      'held_item': instance.heldItem,
      'known_move': instance.knownMove,
      'known_move_type': instance.knownMoveType,
      'location': instance.location,
      'min_level': instance.minLevel,
      'min_happiness': instance.minHappiness,
      'min_beauty': instance.minBeauty,
      'min_affection': instance.minAffection,
      'needs_overworld_rain': instance.needsOverworldRain,
      'party_species': instance.partySpecies,
      'party_type': instance.partyType,
      'relative_physical_stats': instance.relativePhysicalStats,
      'time_of_day': instance.timeOfDay,
      'trade_species': instance.tradeSpecies,
      'turn_upside_down': instance.turnUpsideDown,
    };
