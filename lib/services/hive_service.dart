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

    Hive.registerAdapter(PokemonAdapter());
    Hive.registerAdapter(PokeAbilityAdapter());
    Hive.registerAdapter(PokeMoveAdapter());
    Hive.registerAdapter(PokeMoveVersionAdapter());
    Hive.registerAdapter(PokeStatAdapter());
    Hive.registerAdapter(PokeTypeAdapter());

    Hive.registerAdapter(PokeSpeciesAdapter());
    Hive.registerAdapter(PokeSpeciesDexEntryAdapter());
    Hive.registerAdapter(PalParkEncounterAreaAdapter());
    Hive.registerAdapter(PokemonSpeciesVarietyAdapter());
    Hive.registerAdapter(GenusAdapter());

    _pokeSummaryDb = await Hive.openBox(HiveBoxId.pokeSummaryDb);
    _pokemonDb = await Hive.openBox(HiveBoxId.pokemonDb);
    _pokeSpeciesDb = await Hive.openBox(HiveBoxId.pokeSpeciesDb);

    debugPrint('Initialized Hive Service');
  }

  // PokeSummary
  late Box<PokeSummary> _pokeSummaryDb;

  bool get pokeSummaryIsNotEmpty => _pokeSummaryDb.isNotEmpty;

  List<PokeSummary> get pokemons => _pokeSummaryDb.values.toList();

  Future<void> addPokemons(List<PokeSummary> pokemons) async {
    final pokeMap = {for (PokeSummary pokemon in pokemons) pokemon.id: pokemon};
    await _pokeSummaryDb.putAll(pokeMap);
  }

  PokeSummary getPokeSummary(int id) {
    PokeSummary? pokeSummary = _pokeSummaryDb.get(id);
    if (pokeSummary != null) {
      return pokeSummary;
    } else {
      throw 'Invalid pokemon id';
    }
  }

  // Pokemon
  Future<void> addPokeSpecies(PokeSpecies pokeSpecies) async {
    await _pokeSpeciesDb.put(pokeSpecies.id, pokeSpecies);
  }

  late Box<Pokemon> _pokemonDb;

  bool inPokemonDb(int id) => _pokemonDb.containsKey(id);

  Pokemon getPokemon(int id) {
    Pokemon? pokemon = _pokemonDb.get(id);
    if (pokemon != null) {
      return pokemon;
    } else {
      throw 'Invalid pokemon id';
    }
  }

  // Poke Species
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
}
