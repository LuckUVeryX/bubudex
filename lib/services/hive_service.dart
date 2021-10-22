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

    Hive.registerAdapter(PokeLocationAreasAdapter());
    Hive.registerAdapter(PokeLocationAreaAdapter());
    Hive.registerAdapter(VersionEncounterDetailAdapter());
    Hive.registerAdapter(EncounterAdapter());

    Hive.registerAdapter(PokeEvolutionAdapter());
    Hive.registerAdapter(ChainLinkAdapter());
    Hive.registerAdapter(EvolutionDetailAdapter());

    _pokeSummaryDb = await Hive.openBox(HiveBoxId.pokeSummaryDb);
    _pokemonDb = await Hive.openBox(HiveBoxId.pokemonDb);
    _pokeSpeciesDb = await Hive.openBox(HiveBoxId.pokeSpeciesDb);
    _pokeLocationDb = await Hive.openBox(HiveBoxId.pokeLocationDb);
    _pokeEvolutionDb = await Hive.openBox(HiveBoxId.pokeEvolutionDb);

    debugPrint('Initialized Hive Service');
  }

  Future<void> clearCache() async {
    await Hive.deleteFromDisk();
    _pokeSummaryDb = await Hive.openBox(HiveBoxId.pokeSummaryDb);
    _pokemonDb = await Hive.openBox(HiveBoxId.pokemonDb);
    _pokeSpeciesDb = await Hive.openBox(HiveBoxId.pokeSpeciesDb);
    _pokeLocationDb = await Hive.openBox(HiveBoxId.pokeLocationDb);
  }

  // PokeSummary
  late Box<PokeSummary> _pokeSummaryDb;

  bool get pokeSummaryIsNotEmpty => _pokeSummaryDb.isNotEmpty;

  List<PokeSummary> get pokemons => _pokeSummaryDb.values.toList();

  Future<void> addPokemonSummaries(List<PokeSummary> pokemons) async {
    final pokeMap = {for (PokeSummary pokemon in pokemons) pokemon.id: pokemon};
    await _pokeSummaryDb.putAll(pokeMap);
  }

  PokeSummary getPokeSummary(int id) {
    PokeSummary? pokeSummary = _pokeSummaryDb.get(id);
    if (pokeSummary != null) {
      return pokeSummary;
    } else {
      throw const NoSuchPokemonId();
    }
  }

  // Pokemon

  late Box<Pokemon> _pokemonDb;

  bool inPokemonDb(int id) => _pokemonDb.containsKey(id);

  Pokemon getPokemon(int id) {
    Pokemon? pokemon = _pokemonDb.get(id);
    if (pokemon != null) {
      return pokemon;
    } else {
      throw const NoSuchPokemonId();
    }
  }

  void addPokemon(Pokemon pokemon) {
    _pokemonDb.put(pokemon.id, pokemon);
  }

  // Poke Species
  late Box<PokeSpecies> _pokeSpeciesDb;

  bool inSpeciesDb(int id) => _pokeSpeciesDb.containsKey(id);

  PokeSpecies getPokeSpecies(int id) {
    PokeSpecies? pokeSpecies = _pokeSpeciesDb.get(id);
    if (pokeSpecies != null) {
      return pokeSpecies;
    } else {
      throw const NoSuchPokemonId();
    }
  }

  void addPokeSpecies(PokeSpecies pokeSpecies) {
    _pokeSpeciesDb.put(pokeSpecies.id, pokeSpecies);
  }

  // Poke Location
  late Box<PokeLocationAreas> _pokeLocationDb;

  bool inLocationDb(int id) => _pokeLocationDb.containsKey(id);

  PokeLocationAreas getPokeLocationArea(int id) {
    PokeLocationAreas? pokeLocationAreas = _pokeLocationDb.get(id);
    if (pokeLocationAreas != null) {
      return pokeLocationAreas;
    } else {
      throw const NoSuchPokemonId();
    }
  }

  void addPokeLocationArea(int id, PokeLocationAreas areas) {
    _pokeLocationDb.put(id, areas);
  }

  late Box<PokeEvolution> _pokeEvolutionDb;

  bool inEvolutionDb(int id) => _pokeEvolutionDb.containsKey(id);

  PokeEvolution getPokeEvolution(int id) {
    PokeEvolution? pokeEvolution = _pokeEvolutionDb.get(id);
    if (pokeEvolution != null) {
      return pokeEvolution;
    } else {
      throw const NoSuchPokemonId();
    }
  }
}

class NoSuchPokemonId implements Exception {
  final String? msg;

  const NoSuchPokemonId([this.msg]);

  @override
  String toString() => msg ?? 'NoSuchPokemonId';
}
