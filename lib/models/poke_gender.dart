import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'poke_gender.g.dart';

@JsonSerializable()
class PokeGender {
  final int id;

  final String name;

  final PokeSpeciesGender pokeSpeciesGender;

  PokeGender({
    required this.id,
    required this.name,
    required this.pokeSpeciesGender,
  });

  factory PokeGender.fromJson(Map<String, dynamic> json) =>
      _$PokeGenderFromJson(json);

  Map<String, dynamic> toJson() => _$PokeGenderToJson(this);
}

@JsonSerializable()
class PokeSpeciesGender {
  final int rate;

  @JsonKey(name: 'pokemon_species')
  final PokeSpecies pokeSpecies;

  PokeSpeciesGender({required this.rate, required this.pokeSpecies});

  factory PokeSpeciesGender.fromJson(Map<String, dynamic> json) =>
      _$PokeSpeciesGenderFromJson(json);

  Map<String, dynamic> toJson() => _$PokeSpeciesGenderToJson(this);
}

@JsonSerializable()
class PokeSpecies extends NamedApiResource {
  PokeSpecies({required String name, required String url})
      : super(name: name, url: url);

  factory PokeSpecies.fromJson(Map<String, dynamic> json) =>
      _$PokeSpeciesFromJson(json);

  Map<String, dynamic> toJson() => _$PokeSpeciesToJson(this);
}
