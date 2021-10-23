// ignore_for_file: constant_identifier_names

import 'package:hive/hive.dart';

import 'utils.dart';

part 'poke_enum.g.dart';

@HiveType(typeId: HiveTypeId.sortOrder)
enum SortOrder {
  @HiveField(0)
  smallest,
  @HiveField(1)
  highest,
  @HiveField(2)
  aToZ,
  @HiveField(3)
  zToA,
}

enum PokeTypes {
  bug,
  dark,
  dragon,
  electric,
  fairy,
  fighting,
  fire,
  flying,
  ghost,
  grass,
  ground,
  ice,
  normal,
  poison,
  psychic,
  rock,
  steel,
  water,
}

enum PokeHeight {
  short,
  medium,
  tall,
}

enum PokeWeight {
  light,
  normal,
  heavy,
}

enum Generation { I, II, III, IV, V, VI, VII, VIII }
