// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_species.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokeSpeciesAdapter extends TypeAdapter<PokeSpecies> {
  @override
  final int typeId = 13;

  @override
  PokeSpecies read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokeSpecies(
      id: fields[0] as int,
      name: fields[1] as String,
      order: fields[2] as int,
      genderRate: fields[3] as int,
      captureRate: fields[4] as int,
      baseHappiness: fields[5] as int,
      isBaby: fields[6] as bool,
      isLegendary: fields[7] as bool,
      isMythical: fields[8] as bool,
      hatchCounter: fields[9] as int,
      hasGenderDifferences: fields[10] as bool,
      formsSwitchable: fields[11] as bool,
      growthRate: fields[12] as NamedApiResource,
      pokedexNumbers: (fields[13] as List).cast<PokeSpeciesDexEntry>(),
      eggGroups: (fields[14] as List).cast<NamedApiResource>(),
      color: fields[15] as NamedApiResource,
      shape: fields[16] as NamedApiResource,
      evolvesFromSpecies: fields[17] as NamedApiResource?,
      evolutionChain: fields[18] as ApiResource,
      habitat: fields[19] as NamedApiResource?,
      generation: fields[20] as NamedApiResource,
      names: (fields[21] as List).cast<Name>(),
      palParkEncounters: (fields[22] as List).cast<PalParkEncounterArea>(),
      flavorTextEntries: (fields[23] as List).cast<FlavorText>(),
      formDescriptions: (fields[24] as List).cast<Description>(),
      genera: (fields[25] as List).cast<Genus>(),
      varieties: (fields[26] as List).cast<PokemonSpeciesVariety>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokeSpecies obj) {
    writer
      ..writeByte(27)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.order)
      ..writeByte(3)
      ..write(obj.genderRate)
      ..writeByte(4)
      ..write(obj.captureRate)
      ..writeByte(5)
      ..write(obj.baseHappiness)
      ..writeByte(6)
      ..write(obj.isBaby)
      ..writeByte(7)
      ..write(obj.isLegendary)
      ..writeByte(8)
      ..write(obj.isMythical)
      ..writeByte(9)
      ..write(obj.hatchCounter)
      ..writeByte(10)
      ..write(obj.hasGenderDifferences)
      ..writeByte(11)
      ..write(obj.formsSwitchable)
      ..writeByte(12)
      ..write(obj.growthRate)
      ..writeByte(13)
      ..write(obj.pokedexNumbers)
      ..writeByte(14)
      ..write(obj.eggGroups)
      ..writeByte(15)
      ..write(obj.color)
      ..writeByte(16)
      ..write(obj.shape)
      ..writeByte(17)
      ..write(obj.evolvesFromSpecies)
      ..writeByte(18)
      ..write(obj.evolutionChain)
      ..writeByte(19)
      ..write(obj.habitat)
      ..writeByte(20)
      ..write(obj.generation)
      ..writeByte(21)
      ..write(obj.names)
      ..writeByte(22)
      ..write(obj.palParkEncounters)
      ..writeByte(23)
      ..write(obj.flavorTextEntries)
      ..writeByte(24)
      ..write(obj.formDescriptions)
      ..writeByte(25)
      ..write(obj.genera)
      ..writeByte(26)
      ..write(obj.varieties);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeSpeciesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokeSpeciesDexEntryAdapter extends TypeAdapter<PokeSpeciesDexEntry> {
  @override
  final int typeId = 14;

  @override
  PokeSpeciesDexEntry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokeSpeciesDexEntry(
      entryNumber: fields[0] as int,
      pokedex: fields[1] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, PokeSpeciesDexEntry obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.entryNumber)
      ..writeByte(1)
      ..write(obj.pokedex);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeSpeciesDexEntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PalParkEncounterAreaAdapter extends TypeAdapter<PalParkEncounterArea> {
  @override
  final int typeId = 15;

  @override
  PalParkEncounterArea read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PalParkEncounterArea(
      baseScore: fields[0] as int,
      rate: fields[1] as int,
      palParkArea: fields[2] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, PalParkEncounterArea obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.baseScore)
      ..writeByte(1)
      ..write(obj.rate)
      ..writeByte(2)
      ..write(obj.palParkArea);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PalParkEncounterAreaAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokemonSpeciesVarietyAdapter extends TypeAdapter<PokemonSpeciesVariety> {
  @override
  final int typeId = 16;

  @override
  PokemonSpeciesVariety read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonSpeciesVariety(
      isDefault: fields[0] as bool,
      pokemon: fields[1] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonSpeciesVariety obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.isDefault)
      ..writeByte(1)
      ..write(obj.pokemon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonSpeciesVarietyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenusAdapter extends TypeAdapter<Genus> {
  @override
  final int typeId = 17;

  @override
  Genus read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Genus(
      genus: fields[0] as String,
      language: fields[1] as NamedApiResource,
    );
  }

  @override
  void write(BinaryWriter writer, Genus obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.genus)
      ..writeByte(1)
      ..write(obj.language);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenusAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokeSpecies _$PokeSpeciesFromJson(Map<String, dynamic> json) => PokeSpecies(
      id: json['id'] as int,
      name: json['name'] as String,
      order: json['order'] as int,
      genderRate: json['gender_rate'] as int,
      captureRate: json['capture_rate'] as int,
      baseHappiness: json['base_happiness'] as int,
      isBaby: json['is_baby'] as bool,
      isLegendary: json['is_legendary'] as bool,
      isMythical: json['is_mythical'] as bool,
      hatchCounter: json['hatch_counter'] as int,
      hasGenderDifferences: json['has_gender_differences'] as bool,
      formsSwitchable: json['forms_switchable'] as bool,
      growthRate: NamedApiResource.fromJson(
          json['growth_rate'] as Map<String, dynamic>),
      pokedexNumbers: (json['pokedex_numbers'] as List<dynamic>)
          .map((e) => PokeSpeciesDexEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      eggGroups: (json['egg_groups'] as List<dynamic>)
          .map((e) => NamedApiResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      color: NamedApiResource.fromJson(json['color'] as Map<String, dynamic>),
      shape: NamedApiResource.fromJson(json['shape'] as Map<String, dynamic>),
      evolvesFromSpecies: json['evolves_from_species'] == null
          ? null
          : NamedApiResource.fromJson(
              json['evolves_from_species'] as Map<String, dynamic>),
      evolutionChain:
          ApiResource.fromJson(json['evolution_chain'] as Map<String, dynamic>),
      habitat: json['habitat'] == null
          ? null
          : NamedApiResource.fromJson(json['habitat'] as Map<String, dynamic>),
      generation:
          NamedApiResource.fromJson(json['generation'] as Map<String, dynamic>),
      names: (json['names'] as List<dynamic>)
          .map((e) => Name.fromJson(e as Map<String, dynamic>))
          .toList(),
      palParkEncounters: (json['pal_park_encounters'] as List<dynamic>)
          .map((e) => PalParkEncounterArea.fromJson(e as Map<String, dynamic>))
          .toList(),
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => FlavorText.fromJson(e as Map<String, dynamic>))
          .toList(),
      formDescriptions: (json['form_descriptions'] as List<dynamic>)
          .map((e) => Description.fromJson(e as Map<String, dynamic>))
          .toList(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => Genus.fromJson(e as Map<String, dynamic>))
          .toList(),
      varieties: (json['varieties'] as List<dynamic>)
          .map((e) => PokemonSpeciesVariety.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokeSpeciesToJson(PokeSpecies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order': instance.order,
      'gender_rate': instance.genderRate,
      'capture_rate': instance.captureRate,
      'base_happiness': instance.baseHappiness,
      'is_baby': instance.isBaby,
      'is_legendary': instance.isLegendary,
      'is_mythical': instance.isMythical,
      'hatch_counter': instance.hatchCounter,
      'has_gender_differences': instance.hasGenderDifferences,
      'forms_switchable': instance.formsSwitchable,
      'growth_rate': instance.growthRate,
      'pokedex_numbers': instance.pokedexNumbers,
      'egg_groups': instance.eggGroups,
      'color': instance.color,
      'shape': instance.shape,
      'evolves_from_species': instance.evolvesFromSpecies,
      'evolution_chain': instance.evolutionChain,
      'habitat': instance.habitat,
      'generation': instance.generation,
      'names': instance.names,
      'pal_park_encounters': instance.palParkEncounters,
      'flavor_text_entries': instance.flavorTextEntries,
      'form_descriptions': instance.formDescriptions,
      'genera': instance.genera,
      'varieties': instance.varieties,
    };

PokeSpeciesDexEntry _$PokeSpeciesDexEntryFromJson(Map<String, dynamic> json) =>
    PokeSpeciesDexEntry(
      entryNumber: json['entry_number'] as int,
      pokedex:
          NamedApiResource.fromJson(json['pokedex'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokeSpeciesDexEntryToJson(
        PokeSpeciesDexEntry instance) =>
    <String, dynamic>{
      'entry_number': instance.entryNumber,
      'pokedex': instance.pokedex,
    };

PalParkEncounterArea _$PalParkEncounterAreaFromJson(
        Map<String, dynamic> json) =>
    PalParkEncounterArea(
      baseScore: json['base_score'] as int,
      rate: json['rate'] as int,
      palParkArea:
          NamedApiResource.fromJson(json['area'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PalParkEncounterAreaToJson(
        PalParkEncounterArea instance) =>
    <String, dynamic>{
      'base_score': instance.baseScore,
      'rate': instance.rate,
      'area': instance.palParkArea,
    };

PokemonSpeciesVariety _$PokemonSpeciesVarietyFromJson(
        Map<String, dynamic> json) =>
    PokemonSpeciesVariety(
      isDefault: json['is_default'] as bool,
      pokemon:
          NamedApiResource.fromJson(json['pokemon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonSpeciesVarietyToJson(
        PokemonSpeciesVariety instance) =>
    <String, dynamic>{
      'is_default': instance.isDefault,
      'pokemon': instance.pokemon,
    };

Genus _$GenusFromJson(Map<String, dynamic> json) => Genus(
      genus: json['genus'] as String,
      language:
          NamedApiResource.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenusToJson(Genus instance) => <String, dynamic>{
      'genus': instance.genus,
      'language': instance.language,
    };
