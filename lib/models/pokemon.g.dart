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
      breedings: fields[9] as Breedings,
      typeDefences: fields[10] as TypeDefences,
    );
  }

  @override
  void write(BinaryWriter writer, Pokemon obj) {
    writer
      ..writeByte(11)
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
      ..write(obj.breedings)
      ..writeByte(10)
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
      evYield: fields[11] as String,
      catchRate: fields[12] as CatchRate,
      baseFriendship: fields[13] as BaseFriendship,
      baseExp: fields[14] as int?,
      growthRate: fields[15] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Training obj) {
    writer
      ..writeByte(5)
      ..writeByte(11)
      ..write(obj.evYield)
      ..writeByte(12)
      ..write(obj.catchRate)
      ..writeByte(13)
      ..write(obj.baseFriendship)
      ..writeByte(14)
      ..write(obj.baseExp)
      ..writeByte(15)
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
      value: fields[20] as int?,
      text: fields[21] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CatchRate obj) {
    writer
      ..writeByte(2)
      ..writeByte(20)
      ..write(obj.value)
      ..writeByte(21)
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
      value: fields[20] as int?,
      text: fields[21] as String,
    );
  }

  @override
  void write(BinaryWriter writer, BaseFriendship obj) {
    writer
      ..writeByte(2)
      ..writeByte(20)
      ..write(obj.value)
      ..writeByte(21)
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

class BreedingsAdapter extends TypeAdapter<Breedings> {
  @override
  final int typeId = 4;

  @override
  Breedings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Breedings(
      eggGroups: (fields[30] as List).cast<String>(),
      gender: fields[31] as Gender,
      eggCycles: fields[32] as EggCycles,
    );
  }

  @override
  void write(BinaryWriter writer, Breedings obj) {
    writer
      ..writeByte(3)
      ..writeByte(30)
      ..write(obj.eggGroups)
      ..writeByte(31)
      ..write(obj.gender)
      ..writeByte(32)
      ..write(obj.eggCycles);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BreedingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenderAdapter extends TypeAdapter<Gender> {
  @override
  final int typeId = 6;

  @override
  Gender read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Gender(
      male: fields[33] as double?,
      female: fields[34] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, Gender obj) {
    writer
      ..writeByte(2)
      ..writeByte(33)
      ..write(obj.male)
      ..writeByte(34)
      ..write(obj.female);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EggCyclesAdapter extends TypeAdapter<EggCycles> {
  @override
  final int typeId = 5;

  @override
  EggCycles read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EggCycles(
      text: fields[21] as String,
      value: fields[20] as int,
    );
  }

  @override
  void write(BinaryWriter writer, EggCycles obj) {
    writer
      ..writeByte(2)
      ..writeByte(20)
      ..write(obj.value)
      ..writeByte(21)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EggCyclesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class TypeDefencesAdapter extends TypeAdapter<TypeDefences> {
  @override
  final int typeId = 7;

  @override
  TypeDefences read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TypeDefences(
      normal: fields[40] as double?,
      fire: fields[41] as double?,
      water: fields[42] as double?,
      electric: fields[43] as double?,
      grass: fields[44] as double?,
      ice: fields[45] as double?,
      fighting: fields[46] as double?,
      poison: fields[47] as double?,
      ground: fields[48] as double?,
      flying: fields[49] as double?,
      psychic: fields[50] as double?,
      bug: fields[51] as double?,
      rock: fields[52] as double?,
      ghost: fields[53] as double?,
      dragon: fields[54] as double?,
      dark: fields[55] as double?,
      steel: fields[56] as double?,
      fairy: fields[57] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, TypeDefences obj) {
    writer
      ..writeByte(18)
      ..writeByte(40)
      ..write(obj.normal)
      ..writeByte(41)
      ..write(obj.fire)
      ..writeByte(42)
      ..write(obj.water)
      ..writeByte(43)
      ..write(obj.electric)
      ..writeByte(44)
      ..write(obj.grass)
      ..writeByte(45)
      ..write(obj.ice)
      ..writeByte(46)
      ..write(obj.fighting)
      ..writeByte(47)
      ..write(obj.poison)
      ..writeByte(48)
      ..write(obj.ground)
      ..writeByte(49)
      ..write(obj.flying)
      ..writeByte(50)
      ..write(obj.psychic)
      ..writeByte(51)
      ..write(obj.bug)
      ..writeByte(52)
      ..write(obj.rock)
      ..writeByte(53)
      ..write(obj.ghost)
      ..writeByte(54)
      ..write(obj.dragon)
      ..writeByte(55)
      ..write(obj.dark)
      ..writeByte(56)
      ..write(obj.steel)
      ..writeByte(57)
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
      breedings: Breedings.fromJson(json['breedings'] as Map<String, dynamic>),
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
      'breedings': instance.breedings,
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

Breedings _$BreedingsFromJson(Map<String, dynamic> json) => Breedings(
      eggGroups:
          (json['eggGroups'] as List<dynamic>).map((e) => e as String).toList(),
      gender: Gender.fromJson(json['gender'] as Map<String, dynamic>),
      eggCycles: EggCycles.fromJson(json['eggCycles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BreedingsToJson(Breedings instance) => <String, dynamic>{
      'eggGroups': instance.eggGroups,
      'gender': instance.gender,
      'eggCycles': instance.eggCycles,
    };

Gender _$GenderFromJson(Map<String, dynamic> json) => Gender(
      male: (json['male'] as num?)?.toDouble(),
      female: (json['female'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$GenderToJson(Gender instance) => <String, dynamic>{
      'male': instance.male,
      'female': instance.female,
    };

EggCycles _$EggCyclesFromJson(Map<String, dynamic> json) => EggCycles(
      text: json['text'] as String,
      value: json['value'] as int,
    );

Map<String, dynamic> _$EggCyclesToJson(EggCycles instance) => <String, dynamic>{
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
