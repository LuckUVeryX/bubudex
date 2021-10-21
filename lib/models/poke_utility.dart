import 'package:json_annotation/json_annotation.dart';

part 'poke_utility.g.dart';

@JsonSerializable()
class NamedApiResource {
  final String name;
  final String url;

  NamedApiResource({required this.name, required this.url});

  factory NamedApiResource.fromJson(Map<String, dynamic> json) =>
      _$NamedApiResourceFromJson(json);

  Map<String, dynamic> toJson() => _$NamedApiResourceToJson(this);
}

@JsonSerializable()
class ApiResource {
  final String url;

  ApiResource({required this.url});

  factory ApiResource.fromJson(Map<String, dynamic> json) =>
      _$ApiResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResourceToJson(this);
}

@JsonSerializable()
class Name {
  final String name;
  final NamedApiResource language;

  Name({required this.name, required this.language});

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable()
class Description {
  final String description;
  final NamedApiResource language;

  Description({required this.description, required this.language});

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptionToJson(this);
}

@JsonSerializable()
class FlavorText {
  @JsonKey(name: 'flavor_text')
  final String flavorText;

  final NamedApiResource language;

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
