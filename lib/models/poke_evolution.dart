import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';
import 'poke_utility.dart';

part 'poke_evolution.g.dart';

@JsonSerializable()
@HiveType(typeId: HiveTypeId.pokeEvolution)
class PokeEvolution {
  @HiveField(0)
  final int id;

  @JsonKey(name: 'baby_trigger_item')
  @HiveField(1)
  final NamedApiResource babyTriggerItem;

  @HiveField(2)
  final ChainLink chain;

  PokeEvolution({
    required this.id,
    required this.babyTriggerItem,
    required this.chain,
  });

  factory PokeEvolution.fromJson(Map<String, dynamic> json) =>
      _$PokeEvolutionFromJson(json);

  Map<String, dynamic> toJson() => _$PokeEvolutionToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.chainLink)
class ChainLink {
  @JsonKey(name: 'is_baby')
  @HiveField(0)
  final bool isBaby;

  @HiveField(1)
  final NamedApiResource species;

  @JsonKey(name: 'evolution_details')
  @HiveField(2)
  final List<EvolutionDetail>? evolutionDetails;

  @JsonKey(name: 'evolves_to')
  @HiveField(3)
  final List<ChainLink> evolvesTo;

  ChainLink({
    required this.isBaby,
    required this.species,
    this.evolutionDetails,
    required this.evolvesTo,
  });

  factory ChainLink.fromJson(Map<String, dynamic> json) =>
      _$ChainLinkFromJson(json);

  Map<String, dynamic> toJson() => _$ChainLinkToJson(this);
}

@JsonSerializable()
@HiveType(typeId: HiveTypeId.evolutionDetail)
class EvolutionDetail {
  @HiveField(0)
  final NamedApiResource? item;

  @HiveField(1)
  final NamedApiResource? trigger;

  @HiveField(2)
  final int? gender;

  @JsonKey(name: 'held_item')
  @HiveField(3)
  final NamedApiResource? heldItem;

  @JsonKey(name: 'known_move')
  @HiveField(4)
  final NamedApiResource? knownMove;

  @JsonKey(name: 'known_move_type')
  @HiveField(5)
  final NamedApiResource? knownMoveType;

  @HiveField(6)
  final NamedApiResource? location;

  @JsonKey(name: 'min_level')
  @HiveField(7)
  final int? minLevel;

  @JsonKey(name: 'min_happiness')
  @HiveField(8)
  final int? minHappiness;

  @JsonKey(name: 'min_beauty')
  @HiveField(9)
  final int? minBeauty;

  @JsonKey(name: 'min_affection')
  @HiveField(10)
  final int? minAffection;

  @JsonKey(name: 'needs_overworld_rain')
  @HiveField(11)
  final bool needsOverworldRain;

  @JsonKey(name: 'party_species')
  @HiveField(12)
  final NamedApiResource? partySpecies;

  @JsonKey(name: 'party_type')
  @HiveField(13)
  final NamedApiResource? partyType;

  @JsonKey(name: 'relative_physical_stats')
  @HiveField(14)
  final int? relativePhysicalStats;

  @JsonKey(name: 'time_of_day')
  @HiveField(15)
  final String timeOfDay;

  @JsonKey(name: 'trade_species')
  @HiveField(16)
  final NamedApiResource? tradeSpecies;

  @JsonKey(name: 'turn_upside_down')
  @HiveField(17)
  final bool turnUpsideDown;

  EvolutionDetail({
    this.item,
    this.trigger,
    this.gender,
    this.heldItem,
    this.knownMove,
    this.knownMoveType,
    this.location,
    this.minLevel,
    this.minHappiness,
    this.minBeauty,
    this.minAffection,
    required this.needsOverworldRain,
    this.partySpecies,
    this.partyType,
    this.relativePhysicalStats,
    required this.timeOfDay,
    this.tradeSpecies,
    required this.turnUpsideDown,
  });

  factory EvolutionDetail.fromJson(Map<String, dynamic> json) =>
      _$EvolutionDetailFromJson(json);

  Map<String, dynamic> toJson() => _$EvolutionDetailToJson(this);
}
