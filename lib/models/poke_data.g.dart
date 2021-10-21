// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonAdapter extends TypeAdapter<Pokemon> {
  @override
  final int typeId = 7;

  @override
  Pokemon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pokemon(
      id: fields[0] as int,
      name: fields[1] as String,
      baseExperience: fields[2] as int,
      height: fields[3] as int,
      weight: fields[4] as int,
      abilities: (fields[5] as List).cast<PokeAbility>(),
      forms: (fields[6] as List).cast<NamedApiResource>(),
      moves: (fields[7] as List).cast<PokeMove>(),
      species: fields[8] as NamedApiResource,
      stats: (fields[9] as List).cast<PokeStat>(),
      types: (fields[10] as List).cast<PokeType>(),
    );
  }

  @override
  void write(BinaryWriter writer, Pokemon obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.baseExperience)
      ..writeByte(3)
      ..write(obj.height)
      ..writeByte(4)
      ..write(obj.weight)
      ..writeByte(5)
      ..write(obj.abilities)
      ..writeByte(6)
      ..write(obj.forms)
      ..writeByte(7)
      ..write(obj.moves)
      ..writeByte(8)
      ..write(obj.species)
      ..writeByte(9)
      ..write(obj.stats)
      ..writeByte(10)
      ..write(obj.types);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokeAbilityAdapter extends TypeAdapter<PokeAbility> {
  @override
  final int typeId = 8;

  @override
  PokeAbility read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokeAbility(
      isHidden: fields[0] as bool,
      slot: fields[1] as int,
      ability: fields[2] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, PokeAbility obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.isHidden)
      ..writeByte(1)
      ..write(obj.slot)
      ..writeByte(2)
      ..write(obj.ability);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeAbilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokeMoveAdapter extends TypeAdapter<PokeMove> {
  @override
  final int typeId = 9;

  @override
  PokeMove read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokeMove(
      move: fields[0] as NamedApiResource,
      versionGroupDetails: (fields[1] as List).cast<PokeMoveVersion>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokeMove obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.move)
      ..writeByte(1)
      ..write(obj.versionGroupDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeMoveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokeMoveVersionAdapter extends TypeAdapter<PokeMoveVersion> {
  @override
  final int typeId = 10;

  @override
  PokeMoveVersion read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokeMoveVersion(
      moveLearnMethod: fields[0] as NamedApiResource,
      versionGroup: fields[1] as NamedApiResource,
      levelLearnedAt: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PokeMoveVersion obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.moveLearnMethod)
      ..writeByte(1)
      ..write(obj.versionGroup)
      ..writeByte(2)
      ..write(obj.levelLearnedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeMoveVersionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokeStatAdapter extends TypeAdapter<PokeStat> {
  @override
  final int typeId = 11;

  @override
  PokeStat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokeStat(
      stat: fields[0] as NamedApiResource,
      effort: fields[1] as int,
      baseStat: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PokeStat obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.stat)
      ..writeByte(1)
      ..write(obj.effort)
      ..writeByte(2)
      ..write(obj.baseStat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeStatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokeTypeAdapter extends TypeAdapter<PokeType> {
  @override
  final int typeId = 12;

  @override
  PokeType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokeType(
      slot: fields[0] as int,
      type: fields[1] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, PokeType obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.slot)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      forms: (json['forms'] as List<dynamic>)
          .map((e) => NamedApiResource.fromJson(e as Map<String, dynamic>))
          .toList(),
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
