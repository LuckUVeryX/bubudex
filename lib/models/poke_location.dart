import 'package:bubudex/utils/utils.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'poke_location.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokeLocationArea)
class PokeLocationArea {
  @JsonKey(name: 'location_area')
  @HiveField(0)
  final NamedApiResource locationArea;

  @JsonKey(name: 'version_details')
  @HiveField(1)
  final List<VersionEncounterDetail> versionDetails;

  PokeLocationArea({required this.locationArea, required this.versionDetails});

  factory PokeLocationArea.fromJson(Map<String, dynamic> json) =>
      _$PokeLocationAreaFromJson(json);

  Map<String, dynamic> toJson() => _$PokeLocationAreaToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.versionEncounterDetail)
class VersionEncounterDetail {
  @HiveField(0)
  final NamedApiResource version;

  @JsonKey(name: 'max_chance')
  @HiveField(1)
  final int maxChance;

  @JsonKey(name: 'encounter_details')
  @HiveField(2)
  final List<Encounter> encounterDetails;

  VersionEncounterDetail({
    required this.version,
    required this.maxChance,
    required this.encounterDetails,
  });

  factory VersionEncounterDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionEncounterDetailFromJson(json);

  Map<String, dynamic> toJson() => _$VersionEncounterDetailToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.encounter)
class Encounter {
  @JsonKey(name: 'min_level')
  @HiveField(0)
  final int minLevel;

  @JsonKey(name: 'max_level')
  @HiveField(1)
  final int maxLevel;

  @JsonKey(name: 'condition_values')
  @HiveField(2)
  final List<NamedApiResource> conditionValues;

  @HiveField(3)
  final int chance;

  @HiveField(4)
  final NamedApiResource method;

  Encounter({
    required this.minLevel,
    required this.maxLevel,
    required this.conditionValues,
    required this.chance,
    required this.method,
  });

  factory Encounter.fromJson(Map<String, dynamic> json) =>
      _$EncounterFromJson(json);

  Map<String, dynamic> toJson() => _$EncounterToJson(this);
}
