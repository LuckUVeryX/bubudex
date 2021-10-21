import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'poke_data.g.dart';

@JsonSerializable()
class PokeData {
  int id;

  String name;

  int height;

  int weight;

  List<PokeAbility> abilities;

  PokeData(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required this.abilities});

  factory PokeData.fromJson(Map<String, dynamic> json) =>
      _$PokeDataFromJson(json);

  Map<String, dynamic> toJson() => _$PokeDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class PokeAbility {
  @JsonKey(name: 'is_hidden')
  bool isHidden;

  int slot;

  Ability ability;

  PokeAbility({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });

  factory PokeAbility.fromJson(Map<String, dynamic> json) =>
      _$PokeAbilityFromJson(json);

  Map<String, dynamic> toJson() => _$PokeAbilityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable()
class Ability extends NamedApiResource {
  Ability({
    required String name,
    required String url,
  }) : super(name: name, url: url);

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);

  Map<String, dynamic> toJson() => _$AbilityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
