import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';

part 'poke_utility.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveTypeId.namedApiResource)
class NamedApiResource {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String url;

  NamedApiResource({required this.name, required this.url});

  factory NamedApiResource.fromJson(Map<String, dynamic> json) =>
      _$NamedApiResourceFromJson(json);

  Map<String, dynamic> toJson() => _$NamedApiResourceToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.apiResource)
class ApiResource {
  @HiveField(0)
  final String url;

  ApiResource({required this.url});

  factory ApiResource.fromJson(Map<String, dynamic> json) =>
      _$ApiResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResourceToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.name)
class Name {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final NamedApiResource language;

  Name({required this.name, required this.language});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.description)
class Description {
  @HiveField(0)
  final String description;

  @HiveField(1)
  final NamedApiResource language;

  Description({required this.description, required this.language});

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptionToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.flavorText)
class FlavorText {
  @JsonKey(name: 'flavor_text')
  @HiveField(0)
  final String flavorText;

  @HiveField(1)
  final NamedApiResource language;

  @HiveField(2)
  final NamedApiResource version;

  FlavorText({
    required this.flavorText,
    required this.language,
    required this.version,
  });

  factory FlavorText.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextFromJson(json);

  Map<String, dynamic> toJson() => _$FlavorTextToJson(this);
}
