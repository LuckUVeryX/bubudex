import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/models.dart';
import '../utils/utils.dart';

class HiveService {
  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(NamedApiResourceAdapter());
    Hive.registerAdapter(ApiResourceAdapter());
    Hive.registerAdapter(NameAdapter());
    Hive.registerAdapter(DescriptionAdapter());
    Hive.registerAdapter(FlavorTextAdapter());

    Hive.registerAdapter(PokeSummaryAdapter());
    Hive.registerAdapter(TypeDefencesAdapter());

    Hive.registerAdapter(PokeSpeciesAdapter());
    Hive.registerAdapter(PokeSpeciesDexEntryAdapter());
    Hive.registerAdapter(PalParkEncounterAreaAdapter());
    Hive.registerAdapter(PokemonSpeciesVarietyAdapter());
    Hive.registerAdapter(GenusAdapter());

    _pokemonDb = await Hive.openBox(HiveBoxId.pokemonDb);
    _pokeSpeciesDb = await Hive.openBox(HiveBoxId.pokeSpeciesDb);

    debugPrint('Initialized Hive Service');
  }

  late Box<PokeSummary> _pokemonDb;

  bool get pokemonDbIsNotEmpty => _pokemonDb.isNotEmpty;

  List<PokeSummary> get pokemons => _pokemonDb.values.toList();

  Future<void> addPokemons(List<PokeSummary> pokemons) async {
    final pokeMap = {for (PokeSummary pokemon in pokemons) pokemon.id: pokemon};
    await _pokemonDb.putAll(pokeMap);
  }

  PokeSummary getPokemon(int id) {
    PokeSummary? pokemon = _pokemonDb.get(id);
    if (pokemon != null) {
      return pokemon;
    } else {
      throw 'Invalid pokemon id';
    }
  }

  late Box<PokeSpecies> _pokeSpeciesDb;

  bool inSpeciesDb(int id) => _pokeSpeciesDb.containsKey(id);

  PokeSpecies getPokeSpecies(int id) {
    PokeSpecies? pokeSpecies = _pokeSpeciesDb.get(id);
    if (pokeSpecies != null) {
      return pokeSpecies;
    } else {
      throw 'Invalid pokemon id';
    }
  }

  Future<void> addPokeSpecies(PokeSpecies pokeSpecies) async {
    await _pokeSpeciesDb.put(pokeSpecies.id, pokeSpecies);
  }
}
