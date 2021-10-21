// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonAdapter extends TypeAdapter<Pokemon> {
  @override
  final int typeId = 0;

  @override
  Pokemon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Pokemon(
      id: fields[0] as int,
      name: fields[1] as String,
      image: fields[2] as String,
      description: fields[3] as String,
      height: fields[4] as double,
      weight: fields[5] as double,
      species: fields[6] as String,
      types: (fields[7] as List).cast<String>(),
      typeDefences: fields[8] as TypeDefences,
    );
  }

  @override
  void write(BinaryWriter writer, Pokemon obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.description)
      ..writeByte(4)
      ..write(obj.height)
      ..writeByte(5)
      ..write(obj.weight)
      ..writeByte(6)
      ..write(obj.species)
      ..writeByte(7)
      ..write(obj.types)
      ..writeByte(8)
      ..write(obj.typeDefences);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TypeDefencesAdapter extends TypeAdapter<TypeDefences> {
  @override
  final int typeId = 1;

  @override
  TypeDefences read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TypeDefences(
      normal: fields[6] as double?,
      fire: fields[7] as double?,
      water: fields[8] as double?,
      electric: fields[9] as double?,
      grass: fields[10] as double?,
      ice: fields[11] as double?,
      fighting: fields[12] as double?,
      poison: fields[13] as double?,
      ground: fields[14] as double?,
      flying: fields[15] as double?,
      psychic: fields[16] as double?,
      bug: fields[17] as double?,
      rock: fields[18] as double?,
      ghost: fields[19] as double?,
      dragon: fields[20] as double?,
      dark: fields[21] as double?,
      steel: fields[22] as double?,
      fairy: fields[23] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, TypeDefences obj) {
    writer
      ..writeByte(18)
      ..writeByte(6)
      ..write(obj.normal)
      ..writeByte(7)
      ..write(obj.fire)
      ..writeByte(8)
      ..write(obj.water)
      ..writeByte(9)
      ..write(obj.electric)
      ..writeByte(10)
      ..write(obj.grass)
      ..writeByte(11)
      ..write(obj.ice)
      ..writeByte(12)
      ..write(obj.fighting)
      ..writeByte(13)
      ..write(obj.poison)
      ..writeByte(14)
      ..write(obj.ground)
      ..writeByte(15)
      ..write(obj.flying)
      ..writeByte(16)
      ..write(obj.psychic)
      ..writeByte(17)
      ..write(obj.bug)
      ..writeByte(18)
      ..write(obj.rock)
      ..writeByte(19)
      ..write(obj.ghost)
      ..writeByte(20)
      ..write(obj.dragon)
      ..writeByte(21)
      ..write(obj.dark)
      ..writeByte(22)
      ..write(obj.steel)
      ..writeByte(23)
      ..write(obj.fairy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TypeDefencesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      height: (json['height'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      species: json['species'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      typeDefences:
          TypeDefences.fromJson(json['typeDefences'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
      'height': instance.height,
      'weight': instance.weight,
      'species': instance.species,
      'types': instance.types,
      'typeDefences': instance.typeDefences,
    };

TypeDefences _$TypeDefencesFromJson(Map<String, dynamic> json) => TypeDefences(
      normal: (json['normal'] as num?)?.toDouble(),
      fire: (json['fire'] as num?)?.toDouble(),
      water: (json['water'] as num?)?.toDouble(),
      electric: (json['electric'] as num?)?.toDouble(),
      grass: (json['grass'] as num?)?.toDouble(),
      ice: (json['ice'] as num?)?.toDouble(),
      fighting: (json['fighting'] as num?)?.toDouble(),
      poison: (json['poison'] as num?)?.toDouble(),
      ground: (json['ground'] as num?)?.toDouble(),
      flying: (json['flying'] as num?)?.toDouble(),
      psychic: (json['psychic'] as num?)?.toDouble(),
      bug: (json['bug'] as num?)?.toDouble(),
      rock: (json['rock'] as num?)?.toDouble(),
      ghost: (json['ghost'] as num?)?.toDouble(),
      dragon: (json['dragon'] as num?)?.toDouble(),
      dark: (json['darl'] as num?)?.toDouble(),
      steel: (json['steel'] as num?)?.toDouble(),
      fairy: (json['fairy'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$TypeDefencesToJson(TypeDefences instance) =>
    <String, dynamic>{
      'normal': instance.normal,
      'fire': instance.fire,
      'water': instance.water,
      'electric': instance.electric,
      'grass': instance.grass,
      'ice': instance.ice,
      'fighting': instance.fighting,
      'poison': instance.poison,
      'ground': instance.ground,
      'flying': instance.flying,
      'psychic': instance.psychic,
      'bug': instance.bug,
      'rock': instance.rock,
      'ghost': instance.ghost,
      'dragon': instance.dragon,
      'darl': instance.dark,
      'steel': instance.steel,
      'fairy': instance.fairy,
    };
