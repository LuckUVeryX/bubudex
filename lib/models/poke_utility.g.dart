// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_utility.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NamedApiResourceAdapter extends TypeAdapter<NamedApiResource> {
  @override
  final int typeId = 0;

  @override
  NamedApiResource read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NamedApiResource(
      name: fields[0] as String,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NamedApiResource obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NamedApiResourceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ApiResourceAdapter extends TypeAdapter<ApiResource> {
  @override
  final int typeId = 1;

  @override
  ApiResource read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ApiResource(
      url: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ApiResource obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiResourceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NameAdapter extends TypeAdapter<Name> {
  @override
  final int typeId = 2;

  @override
  Name read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Name(
      name: fields[0] as String,
      language: fields[1] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, Name obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.language);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NameAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DescriptionAdapter extends TypeAdapter<Description> {
  @override
  final int typeId = 3;

  @override
  Description read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Description(
      description: fields[0] as String,
      language: fields[1] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, Description obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.description)
      ..writeByte(1)
      ..write(obj.language);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DescriptionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FlavorTextAdapter extends TypeAdapter<FlavorText> {
  @override
  final int typeId = 4;

  @override
  FlavorText read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FlavorText(
      flavorText: fields[0] as String,
      language: fields[1] as NamedApiResource,
      version: fields[2] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, FlavorText obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.flavorText)
      ..writeByte(1)
      ..write(obj.language)
      ..writeByte(2)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FlavorTextAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NamedApiResource _$NamedApiResourceFromJson(Map<String, dynamic> json) =>
    NamedApiResource(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$NamedApiResourceToJson(NamedApiResource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

ApiResource _$ApiResourceFromJson(Map<String, dynamic> json) => ApiResource(
      url: json['url'] as String,
    );

Map<String, dynamic> _$ApiResourceToJson(ApiResource instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      name: json['name'] as String,
      language:
          NamedApiResource.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'name': instance.name,
      'language': instance.language,
    };

Description _$DescriptionFromJson(Map<String, dynamic> json) => Description(
      description: json['description'] as String,
      language:
          NamedApiResource.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DescriptionToJson(Description instance) =>
    <String, dynamic>{
      'description': instance.description,
      'language': instance.language,
    };

FlavorText _$FlavorTextFromJson(Map<String, dynamic> json) => FlavorText(
      flavorText: json['flavor_text'] as String,
      language:
          NamedApiResource.fromJson(json['language'] as Map<String, dynamic>),
      version:
          NamedApiResource.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FlavorTextToJson(FlavorText instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
      'version': instance.version,
    };
