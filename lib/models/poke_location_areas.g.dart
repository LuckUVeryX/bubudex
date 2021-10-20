// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_location_areas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeLocationAreas _$PokeLocationAreasFromJson(Map<String, dynamic> json) =>
    PokeLocationAreas(
      locationArea:
          LocationArea.fromJson(json['location_area'] as Map<String, dynamic>),
      versionDetails: VersionDetails.fromJson(
          json['version_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokeLocationAreasToJson(PokeLocationAreas instance) =>
    <String, dynamic>{
      'location_area': instance.locationArea,
      'version_details': instance.versionDetails,
    };

LocationArea _$LocationAreaFromJson(Map<String, dynamic> json) => LocationArea(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$LocationAreaToJson(LocationArea instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionDetails _$VersionDetailsFromJson(Map<String, dynamic> json) =>
    VersionDetails(
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionDetailsToJson(VersionDetails instance) =>
    <String, dynamic>{
      'version': instance.version,
    };

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
