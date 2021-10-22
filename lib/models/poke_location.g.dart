// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_location.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokeLocationAreaAdapter extends TypeAdapter<PokeLocationArea> {
  @override
  final int typeId = 18;

  @override
  PokeLocationArea read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokeLocationArea(
      locationArea: fields[0] as NamedApiResource,
      versionDetails: (fields[1] as List).cast<VersionEncounterDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokeLocationArea obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.locationArea)
      ..writeByte(1)
      ..write(obj.versionDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeLocationAreaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VersionEncounterDetailAdapter
    extends TypeAdapter<VersionEncounterDetail> {
  @override
  final int typeId = 19;

  @override
  VersionEncounterDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VersionEncounterDetail(
      version: fields[0] as NamedApiResource,
      maxChance: fields[1] as int,
      encounterDetails: (fields[2] as List).cast<Encounter>(),
    );
  }

  @override
  void write(BinaryWriter writer, VersionEncounterDetail obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.version)
      ..writeByte(1)
      ..write(obj.maxChance)
      ..writeByte(2)
      ..write(obj.encounterDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VersionEncounterDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EncounterAdapter extends TypeAdapter<Encounter> {
  @override
  final int typeId = 20;

  @override
  Encounter read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Encounter(
      minLevel: fields[0] as int,
      maxLevel: fields[1] as int,
      conditionValues: (fields[2] as List).cast<NamedApiResource>(),
      chance: fields[3] as int,
      method: fields[4] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, Encounter obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.minLevel)
      ..writeByte(1)
      ..write(obj.maxLevel)
      ..writeByte(2)
      ..write(obj.conditionValues)
      ..writeByte(3)
      ..write(obj.chance)
      ..writeByte(4)
      ..write(obj.method);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EncounterAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeLocationArea _$PokeLocationAreaFromJson(Map<String, dynamic> json) =>
    PokeLocationArea(
      locationArea: NamedApiResource.fromJson(
          json['location_area'] as Map<String, dynamic>),
      versionDetails: (json['version_details'] as List<dynamic>)
          .map(
              (e) => VersionEncounterDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokeLocationAreaToJson(PokeLocationArea instance) =>
    <String, dynamic>{
      'location_area': instance.locationArea,
      'version_details': instance.versionDetails,
    };

VersionEncounterDetail _$VersionEncounterDetailFromJson(
        Map<String, dynamic> json) =>
    VersionEncounterDetail(
      version:
          NamedApiResource.fromJson(json['version'] as Map<String, dynamic>),
      maxChance: json['max_chance'] as int,
      encounterDetails: (json['encounter_details'] as List<dynamic>)
          .map((e) => Encounter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VersionEncounterDetailToJson(
        VersionEncounterDetail instance) =>
    <String, dynamic>{
      'version': instance.version,
      'max_chance': instance.maxChance,
      'encounter_details': instance.encounterDetails,
    };

Encounter _$EncounterFromJson(Map<String, dynamic> json) => Encounter(
      minLevel: json['min_level'] as int,
      maxLevel: json['max_level'] as int,
      conditionValues: (json['condition_values'] as List<dynamic>)
          .map((e) => NamedApiResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      chance: json['chance'] as int,
      method: NamedApiResource.fromJson(json['method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EncounterToJson(Encounter instance) => <String, dynamic>{
      'min_level': instance.minLevel,
      'max_level': instance.maxLevel,
      'condition_values': instance.conditionValues,
      'chance': instance.chance,
      'method': instance.method,
    };
