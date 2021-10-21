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
      training: fields[8] as Training,
      typeDefences: fields[9] as TypeDefences,
    );
  }

  @override
  void write(BinaryWriter writer, Pokemon obj) {
    writer
      ..writeByte(10)
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
      ..write(obj.training)
      ..writeByte(9)
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

class TrainingAdapter extends TypeAdapter<Training> {
  @override
  final int typeId = 1;

  @override
  Training read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Training(
      evYield: fields[10] as String,
      catchRate: fields[11] as CatchRate,
      baseFriendship: fields[12] as BaseFriendship,
      baseExp: fields[13] as int?,
      growthRate: fields[14] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Training obj) {
    writer
      ..writeByte(5)
      ..writeByte(10)
      ..write(obj.evYield)
      ..writeByte(11)
      ..write(obj.catchRate)
      ..writeByte(12)
      ..write(obj.baseFriendship)
      ..writeByte(13)
      ..write(obj.baseExp)
      ..writeByte(14)
      ..write(obj.growthRate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrainingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CatchRateAdapter extends TypeAdapter<CatchRate> {
  @override
  final int typeId = 2;

  @override
  CatchRate read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatchRate(
      value: fields[15] as int?,
      text: fields[16] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CatchRate obj) {
    writer
      ..writeByte(2)
      ..writeByte(15)
      ..write(obj.value)
      ..writeByte(16)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatchRateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class BaseFriendshipAdapter extends TypeAdapter<BaseFriendship> {
  @override
  final int typeId = 3;

  @override
  BaseFriendship read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BaseFriendship(
      value: fields[15] as int?,
      text: fields[16] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BaseFriendship obj) {
    writer
      ..writeByte(2)
      ..writeByte(15)
      ..write(obj.value)
      ..writeByte(16)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseFriendshipAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TypeDefencesAdapter extends TypeAdapter<TypeDefences> {
  @override
  final int typeId = 4;

  @override
  TypeDefences read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TypeDefences(
      normal: fields[20] as double?,
      fire: fields[21] as double?,
      water: fields[22] as double?,
      electric: fields[23] as double?,
      grass: fields[24] as double?,
      ice: fields[25] as double?,
      fighting: fields[26] as double?,
      poison: fields[27] as double?,
      ground: fields[28] as double?,
      flying: fields[29] as double?,
      psychic: fields[30] as double?,
      bug: fields[31] as double?,
      rock: fields[32] as double?,
      ghost: fields[33] as double?,
      dragon: fields[34] as double?,
      dark: fields[35] as double?,
      steel: fields[36] as double?,
      fairy: fields[37] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, TypeDefences obj) {
    writer
      ..writeByte(18)
      ..writeByte(20)
      ..write(obj.normal)
      ..writeByte(21)
      ..write(obj.fire)
      ..writeByte(22)
      ..write(obj.water)
      ..writeByte(23)
      ..write(obj.electric)
      ..writeByte(24)
      ..write(obj.grass)
      ..writeByte(25)
      ..write(obj.ice)
      ..writeByte(26)
      ..write(obj.fighting)
      ..writeByte(27)
      ..write(obj.poison)
      ..writeByte(28)
      ..write(obj.ground)
      ..writeByte(29)
      ..write(obj.flying)
      ..writeByte(30)
      ..write(obj.psychic)
      ..writeByte(31)
      ..write(obj.bug)
      ..writeByte(32)
      ..write(obj.rock)
      ..writeByte(33)
      ..write(obj.ghost)
      ..writeByte(34)
      ..write(obj.dragon)
      ..writeByte(35)
      ..write(obj.dark)
      ..writeByte(36)
      ..write(obj.steel)
      ..writeByte(37)
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
      training: Training.fromJson(json['training'] as Map<String, dynamic>),
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
      'training': instance.training,
      'typeDefences': instance.typeDefences,
    };

Training _$TrainingFromJson(Map<String, dynamic> json) => Training(
      evYield: json['evYield'] as String,
      catchRate: CatchRate.fromJson(json['catchRate'] as Map<String, dynamic>),
      baseFriendship: BaseFriendship.fromJson(
          json['baseFriendship'] as Map<String, dynamic>),
      baseExp: json['baseExp'] as int?,
      growthRate: json['growthRate'] as String,
    );

Map<String, dynamic> _$TrainingToJson(Training instance) => <String, dynamic>{
      'evYield': instance.evYield,
      'catchRate': instance.catchRate,
      'baseFriendship': instance.baseFriendship,
      'baseExp': instance.baseExp,
      'growthRate': instance.growthRate,
    };

CatchRate _$CatchRateFromJson(Map<String, dynamic> json) => CatchRate(
      value: json['value'] as int?,
      text: json['text'] as String,
    );

Map<String, dynamic> _$CatchRateToJson(CatchRate instance) => <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
    };

BaseFriendship _$BaseFriendshipFromJson(Map<String, dynamic> json) =>
    BaseFriendship(
      value: json['value'] as int?,
      text: json['text'] as String,
    );

Map<String, dynamic> _$BaseFriendshipToJson(BaseFriendship instance) =>
    <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
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
