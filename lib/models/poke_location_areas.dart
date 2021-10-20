import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'poke_location_areas.g.dart';

@JsonSerializable()
class PokeLocationAreas {
  @JsonKey(name: 'location_area')
  final LocationArea locationArea;

  @JsonKey(name: 'version_details')
  final VersionDetails versionDetails;

  PokeLocationAreas({
    required this.locationArea,
    required this.versionDetails,
  });

  factory PokeLocationAreas.fromJson(Map<String, dynamic> json) =>
      _$PokeLocationAreasFromJson(json);

  Map<String, dynamic> toJson() => _$PokeLocationAreasToJson(this);
}

@JsonSerializable()
class LocationArea extends NamedApiResource {
  LocationArea({required String name, required String url})
      : super(name: name, url: url);

  factory LocationArea.fromJson(Map<String, dynamic> json) =>
      _$LocationAreaFromJson(json);

  Map<String, dynamic> toJson() => _$LocationAreaToJson(this);
}

@JsonSerializable()
class VersionDetails {
  final Version version;

  VersionDetails({required this.version});

  factory VersionDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$VersionDetailsToJson(this);
}

@JsonSerializable()
class Version extends NamedApiResource {
  Version({required String name, required String url})
      : super(name: name, url: url);

  factory Version.fromJson(Map<String, dynamic> json) =>
      _$VersionFromJson(json);

  Map<String, dynamic> toJson() => _$VersionToJson(this);
}
