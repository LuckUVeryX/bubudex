import '../models/models.dart';
import 'utils.dart';

List<PokeType> getTypeWeakness(TypeDefences typeDefences) {
  Map<PokeType, double?> map = typeDefences.toMap();
  map.removeWhere((key, value) {
    // remove if defense value is null or less than 1
    return value == null || value < 1;
  });
  return map.keys.toList();
}

/// Height thresholds obtained from
/// https://pokemon.fandom.com/wiki/List_of_Pokémon_by_height
PokeHeight getPokeHeight(Pokemon pokemon) {
  if (pokemon.height < 1.3) {
    return PokeHeight.short;
  } else if (pokemon.height < 2.2) {
    return PokeHeight.medium;
  } else {
    return PokeHeight.tall;
  }
}

PokeWeight getPokeWeight(Pokemon pokemon) {
  if (pokemon.weight < 45) {
    return PokeWeight.light;
  } else if (pokemon.weight < 230) {
    return PokeWeight.normal;
  } else {
    return PokeWeight.heavy;
  }
}
