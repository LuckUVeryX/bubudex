// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poke_enum.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SortOrderAdapter extends TypeAdapter<SortOrder> {
  @override
  final int typeId = 25;

  @override
  SortOrder read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return SortOrder.smallest;
      case 1:
        return SortOrder.highest;
      case 2:
        return SortOrder.aToZ;
      case 3:
        return SortOrder.zToA;
      default:
        return SortOrder.smallest;
    }
  }

  @override
  void write(BinaryWriter writer, SortOrder obj) {
    switch (obj) {
      case SortOrder.smallest:
        writer.writeByte(0);
        break;
      case SortOrder.highest:
        writer.writeByte(1);
        break;
      case SortOrder.aToZ:
        writer.writeByte(2);
        break;
      case SortOrder.zToA:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SortOrderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokeTypesAdapter extends TypeAdapter<PokeTypes> {
  @override
  final int typeId = 26;

  @override
  PokeTypes read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PokeTypes.bug;
      case 1:
        return PokeTypes.dark;
      case 2:
        return PokeTypes.dragon;
      case 3:
        return PokeTypes.electric;
      case 4:
        return PokeTypes.fairy;
      case 5:
        return PokeTypes.fighting;
      case 6:
        return PokeTypes.fire;
      case 7:
        return PokeTypes.flying;
      case 8:
        return PokeTypes.ghost;
      case 9:
        return PokeTypes.grass;
      case 10:
        return PokeTypes.ground;
      case 11:
        return PokeTypes.ice;
      case 12:
        return PokeTypes.normal;
      case 13:
        return PokeTypes.poison;
      case 14:
        return PokeTypes.psychic;
      case 15:
        return PokeTypes.rock;
      case 16:
        return PokeTypes.steel;
      case 17:
        return PokeTypes.water;
      default:
        return PokeTypes.bug;
    }
  }

  @override
  void write(BinaryWriter writer, PokeTypes obj) {
    switch (obj) {
      case PokeTypes.bug:
        writer.writeByte(0);
        break;
      case PokeTypes.dark:
        writer.writeByte(1);
        break;
      case PokeTypes.dragon:
        writer.writeByte(2);
        break;
      case PokeTypes.electric:
        writer.writeByte(3);
        break;
      case PokeTypes.fairy:
        writer.writeByte(4);
        break;
      case PokeTypes.fighting:
        writer.writeByte(5);
        break;
      case PokeTypes.fire:
        writer.writeByte(6);
        break;
      case PokeTypes.flying:
        writer.writeByte(7);
        break;
      case PokeTypes.ghost:
        writer.writeByte(8);
        break;
      case PokeTypes.grass:
        writer.writeByte(9);
        break;
      case PokeTypes.ground:
        writer.writeByte(10);
        break;
      case PokeTypes.ice:
        writer.writeByte(11);
        break;
      case PokeTypes.normal:
        writer.writeByte(12);
        break;
      case PokeTypes.poison:
        writer.writeByte(13);
        break;
      case PokeTypes.psychic:
        writer.writeByte(14);
        break;
      case PokeTypes.rock:
        writer.writeByte(15);
        break;
      case PokeTypes.steel:
        writer.writeByte(16);
        break;
      case PokeTypes.water:
        writer.writeByte(17);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeTypesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokeHeightAdapter extends TypeAdapter<PokeHeight> {
  @override
  final int typeId = 27;

  @override
  PokeHeight read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PokeHeight.short;
      case 1:
        return PokeHeight.medium;
      case 2:
        return PokeHeight.tall;
      default:
        return PokeHeight.short;
    }
  }

  @override
  void write(BinaryWriter writer, PokeHeight obj) {
    switch (obj) {
      case PokeHeight.short:
        writer.writeByte(0);
        break;
      case PokeHeight.medium:
        writer.writeByte(1);
        break;
      case PokeHeight.tall:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeHeightAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokeWeightAdapter extends TypeAdapter<PokeWeight> {
  @override
  final int typeId = 28;

  @override
  PokeWeight read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return PokeWeight.light;
      case 1:
        return PokeWeight.normal;
      case 2:
        return PokeWeight.heavy;
      default:
        return PokeWeight.light;
    }
  }

  @override
  void write(BinaryWriter writer, PokeWeight obj) {
    switch (obj) {
      case PokeWeight.light:
        writer.writeByte(0);
        break;
      case PokeWeight.normal:
        writer.writeByte(1);
        break;
      case PokeWeight.heavy:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokeWeightAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationAdapter extends TypeAdapter<Generation> {
  @override
  final int typeId = 29;

  @override
  Generation read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Generation.I;
      case 1:
        return Generation.II;
      case 2:
        return Generation.III;
      case 3:
        return Generation.IV;
      case 4:
        return Generation.V;
      case 5:
        return Generation.VI;
      case 6:
        return Generation.VII;
      case 7:
        return Generation.VIII;
      default:
        return Generation.I;
    }
  }

  @override
  void write(BinaryWriter writer, Generation obj) {
    switch (obj) {
      case Generation.I:
        writer.writeByte(0);
        break;
      case Generation.II:
        writer.writeByte(1);
        break;
      case Generation.III:
        writer.writeByte(2);
        break;
      case Generation.IV:
        writer.writeByte(3);
        break;
      case Generation.V:
        writer.writeByte(4);
        break;
      case Generation.VI:
        writer.writeByte(5);
        break;
      case Generation.VII:
        writer.writeByte(6);
        break;
      case Generation.VIII:
        writer.writeByte(7);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
