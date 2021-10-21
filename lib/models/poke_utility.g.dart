// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_utility.dart';

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
