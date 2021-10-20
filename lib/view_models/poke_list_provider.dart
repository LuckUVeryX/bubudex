import 'package:flutter/material.dart';

import '../models/models.dart';
import '../utils/utils.dart';
import '../views/theme/theme.dart';

enum PokeListState { noFilter, filter }

class PokeListProvider extends ChangeNotifier {
  PokeListProvider(this._pokemons) {
    _pokemonsCopy = pokemons;
  }

  PokeListState state = PokeListState.noFilter;

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

  final List<PokeType> _typeFilter = [];
  List<PokeType> get typeFilter => _typeFilter;

  void toggleTypeFilter(PokeType pokeType) {
    if (_typeFilter.contains(pokeType)) {
      _typeFilter.remove(pokeType);
    } else {
      _typeFilter.add(pokeType);
    }
    notifyListeners();
    debugPrint('Type Filter: $_typeFilter');
  }

  FilterColor getTypeColor(PokeType pokeType) {
    if (_typeFilter.contains(pokeType)) {
      return FilterColor(
          background: Palette.getTypeColor(pokeType), icon: Colors.white);
    } else {
      return FilterColor(
          background: Colors.white, icon: Palette.getTypeColor(pokeType));
    }
  }

  final List<PokeType> _weaknessFilter = [];
  List<PokeType> get weaknessFilter => _weaknessFilter;

  void toggleWeaknessFilter(PokeType pokeType) {
    if (_weaknessFilter.contains(pokeType)) {
      _weaknessFilter.remove(pokeType);
    } else {
      _weaknessFilter.add(pokeType);
    }
    notifyListeners();
    debugPrint('Weakness Filter: $_weaknessFilter');
  }

  FilterColor getWeaknessColor(PokeType pokeType) {
    if (_weaknessFilter.contains(pokeType)) {
      return FilterColor(
          background: Palette.getTypeColor(pokeType), icon: Colors.white);
    } else {
      return FilterColor(
          background: Colors.white, icon: Palette.getTypeColor(pokeType));
    }
  }

  final List<PokeHeight> _heightFilter = [];
  List<PokeHeight> get heightFilter => _heightFilter;

  void toggleHeightFilter(PokeHeight pokeHeight) {
    if (_heightFilter.contains(pokeHeight)) {
      _heightFilter.remove(pokeHeight);
    } else {
      _heightFilter.add(pokeHeight);
    }
    notifyListeners();
    debugPrint('Height Filter: $_heightFilter');
  }

  FilterColor getHeightColor(PokeHeight pokeHeight) {
    if (_heightFilter.contains(pokeHeight)) {
      return FilterColor(
          background: Palette.getHeightColor(pokeHeight), icon: Colors.white);
    } else {
      return FilterColor(
          background: Colors.white, icon: Palette.getHeightColor(pokeHeight));
    }
  }

  final List<PokeWeight> _weightFilter = [];
  List<PokeWeight> get weightFilter => _weightFilter;

  void toggleWeightFilter(PokeWeight pokeWeight) {
    if (_weightFilter.contains(pokeWeight)) {
      _weightFilter.remove(pokeWeight);
    } else {
      _weightFilter.add(pokeWeight);
    }
    notifyListeners();
    debugPrint('Height Filter: $_weightFilter');
  }

  FilterColor getWeightColor(PokeWeight pokeWeight) {
    if (_weightFilter.contains(pokeWeight)) {
      return FilterColor(
          background: Palette.getWeightColor(pokeWeight), icon: Colors.white);
    } else {
      return FilterColor(
          background: Colors.white, icon: Palette.getWeightColor(pokeWeight));
    }
  }

  void resetFilters() {
    _typeFilter.clear();
    _weaknessFilter.clear();
    _heightFilter.clear();
    _weightFilter.clear();
    _pokemons = _pokemonsCopy;
    notifyListeners();
  }

  void applyFilters() {
    _pokemons = _pokemonsCopy.where((poke) {
      bool typeFilter = _typeFilter
          .every((type) => poke.types.contains(stringFromPokeType(type)));
      bool weaknessFilter = _weaknessFilter
          .every((type) => getTypeWeakness(poke.typeDefences).contains(type));
      return typeFilter && weaknessFilter;
    }).toList();
    notifyListeners();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
