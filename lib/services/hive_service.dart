import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/models.dart';
import '../utils/utils.dart';

class HiveService {
  late Box<Pokemon> _pokemonDb;

  bool get isNotEmpty => _pokemonDb.isNotEmpty;
  List<Pokemon> get pokemons => _pokemonDb.values.toList();

  Future<void> addPokemons(List<Pokemon> pokemons) async {
    final pokeMap = {for (Pokemon pokemon in pokemons) pokemon.id: pokemon};
    await _pokemonDb.putAll(pokeMap);
  }

  Pokemon getPokemon(int id) {
    Pokemon? pokemon = _pokemonDb.get(id);
    if (pokemon != null) {
      return pokemon;
    } else {
      throw 'Invalid pokemon id';
    }
  }

  Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter(PokemonAdapter());
    Hive.registerAdapter(TypeDefencesAdapter());

    _pokemonDb = await Hive.openBox(HiveBoxId.pokemonDb);

    debugPrint('Initialized Hive Service');
  }
}
