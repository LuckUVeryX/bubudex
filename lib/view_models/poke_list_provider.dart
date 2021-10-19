import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../models/models.dart';

class PokeListProvider extends ChangeNotifier {
  PokeListProvider(this._pokemons) {
    _pokemonsCopy = pokemons;
  }

  late final List<Pokemon> _pokemonsCopy; // to hold immutable list of pokemons
  List<Pokemon> _pokemons;
  List<Pokemon> get pokemons => _pokemons;

  final _searchController = TextEditingController();
  TextEditingController get searchController => _searchController;

  void searchPokemons() {
    String query = _searchController.text.trim().toLowerCase();
    if (query.isEmpty) {
      _pokemons = _pokemonsCopy;
    } else {
      _pokemons = _pokemonsCopy.where((pokemon) {
        int id = int.tryParse(query) ?? -1;
        String name = pokemon.name.toLowerCase();
        List<String> types =
            pokemon.types.map((type) => type.toLowerCase()).toList();
        return pokemon.id == id ||
            name.contains(query) ||
            types.contains(query);
      }).toList();
    }
    notifyListeners();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
