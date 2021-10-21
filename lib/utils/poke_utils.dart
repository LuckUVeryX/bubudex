import '../models/models.dart';
import 'utils.dart';

List<PokeTypes> getTypeWeakness(TypeDefences typeDefences) {
  Map<PokeTypes, double?> map = typeDefences.toMap();
  map.removeWhere((key, value) {
    // remove if defense value is null or less than 1
    return value == null || value < 1;
  });
  return map.keys.toList();
}

/// Height thresholds obtained from
///
/// https://pokemon.fandom.com/wiki/List_of_Pokémon_by_height
PokeHeight getPokeHeight(PokeSummary pokemon) {
  if (pokemon.height < 1.3) {
    return PokeHeight.short;
  } else if (pokemon.height < 2.2) {
    return PokeHeight.medium;
  } else {
    return PokeHeight.tall;
  }
}

/// Weight thresholds obtained from
///
/// https://pokemon.fandom.com/wiki/List_of_Pokémon_by_weight
PokeWeight getPokeWeight(PokeSummary pokemon) {
  if (pokemon.weight < 45) {
    return PokeWeight.light;
  } else if (pokemon.weight < 230) {
    return PokeWeight.normal;
  } else {
    return PokeWeight.heavy;
  }
}

/// Generations obtained from
///
/// https://en.wikipedia.org/wiki/List_of_Pokémon#List_of_species
Generation getGeneration(PokeSummary pokemon) {
  if (pokemon.id < 152) {
    return Generation.I;
  } else if (pokemon.id < 252) {
    return Generation.II;
  } else if (pokemon.id < 387) {
    return Generation.III;
  } else if (pokemon.id < 494) {
    return Generation.IV;
  } else if (pokemon.id < 650) {
    return Generation.V;
  } else if (pokemon.id < 722) {
    return Generation.VI;
  } else if (pokemon.id < 810) {
    return Generation.VII;
  } else {
    return Generation.VIII;
  }
}
