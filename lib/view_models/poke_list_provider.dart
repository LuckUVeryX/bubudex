import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../models/models.dart';
import '../utils/utils.dart';
import '../views/theme/theme.dart';

enum SortOrder { smallest, highest, aToZ, zToA }

class PokeListProvider extends ChangeNotifier {
  PokeListProvider(this._pokemons, this._numOfPoke) {
    _pokemonsCopy = _pokemons;
  }

  late final List<PokeSummary>
      _pokemonsCopy; // to hold immutable list of pokemons
  List<PokeSummary> _pokemons;

  // * Sort
  SortOrder _sortOrder = SortOrder.smallest;
  SortOrder get sortOrder => _sortOrder;

  void setSortOrder(SortOrder order) {
    _sortOrder = order;
    notifyListeners();
  }

  List<PokeSummary> get pokemons {
    switch (_sortOrder) {
      case SortOrder.smallest:
        _pokemons.sort((a, b) => a.id.compareTo(b.id));
        break;
      case SortOrder.highest:
        _pokemons.sort((b, a) => a.id.compareTo(b.id));
        break;
      case SortOrder.aToZ:
        _pokemons.sort((a, b) => a.name.compareTo(b.name));
        break;
      case SortOrder.zToA:
        _pokemons.sort((b, a) => a.name.compareTo(b.name));
        break;
    }
    return _pokemons;
  }

  final int _numOfPoke;
  int get numOfPoke => _numOfPoke;

  // * Search
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
    _clearFilters();
  }

  // * Filter
  final List<PokeTypes> _typeFilter = [];

  void toggleTypeFilter(PokeTypes pokeType) {
    if (_typeFilter.contains(pokeType)) {
      _typeFilter.remove(pokeType);
    } else {
      _typeFilter.add(pokeType);
    }
    _applyFilters();
    debugPrint('Type Filter: $_typeFilter');
  }

  FilterColor getTypeColor(PokeTypes pokeType) {
    if (_typeFilter.contains(pokeType)) {
      return FilterColor(
          background: Palette.getTypeColor(pokeType), icon: Colors.white);
    } else {
      return FilterColor(
          background: Colors.white, icon: Palette.getTypeColor(pokeType));
    }
  }

  final List<PokeTypes> _weaknessFilter = [];

  void toggleWeaknessFilter(PokeTypes pokeType) {
    if (_weaknessFilter.contains(pokeType)) {
      _weaknessFilter.remove(pokeType);
    } else {
      _weaknessFilter.add(pokeType);
    }
    _applyFilters();

    debugPrint('Weakness Filter: $_weaknessFilter');
  }

  FilterColor getWeaknessColor(PokeTypes pokeType) {
    if (_weaknessFilter.contains(pokeType)) {
      return FilterColor(
          background: Palette.getTypeColor(pokeType), icon: Colors.white);
    } else {
      return FilterColor(
          background: Colors.white, icon: Palette.getTypeColor(pokeType));
    }
  }

  final List<PokeHeight> _heightFilter = [];

  void toggleHeightFilter(PokeHeight pokeHeight) {
    if (_heightFilter.contains(pokeHeight)) {
      _heightFilter.remove(pokeHeight);
    } else {
      _heightFilter.add(pokeHeight);
    }
    _applyFilters();
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

  void toggleWeightFilter(PokeWeight pokeWeight) {
    if (_weightFilter.contains(pokeWeight)) {
      _weightFilter.remove(pokeWeight);
    } else {
      _weightFilter.add(pokeWeight);
    }
    _applyFilters();
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

  Timer? _rangeSliderDebounce;

  SfRangeValues? _rangeValues;
  SfRangeValues get rangeValues =>
      _rangeValues ??= SfRangeValues(1.0, _numOfPoke.toDouble());

  void setRangeValues(SfRangeValues values) {
    _rangeValues = values;
    notifyListeners();
    if (_rangeSliderDebounce?.isActive ?? false) _rangeSliderDebounce?.cancel();
    _rangeSliderDebounce = Timer(const Duration(milliseconds: 100), () {
      _applyFilters();
    });
  }

  void resetFilters() {
    _searchController.clear();
    _pokemons = _pokemonsCopy;
    _clearFilters();
  }

  void _clearFilters() {
    _typeFilter.clear();
    _weaknessFilter.clear();
    _heightFilter.clear();
    _weightFilter.clear();
    _rangeValues = SfRangeValues(1.0, _numOfPoke.toDouble());
    notifyListeners();
  }

  // * Generation
  final List<Generation> _generationFilter = [];
  List<Generation> get generationFilter => _generationFilter;

  void toggleGeneration(Generation generation) {
    if (_generationFilter.contains(generation)) {
      _generationFilter.remove(generation);
    } else {
      _generationFilter.add(generation);
    }
    _applyFilters();
    debugPrint('Generation Filter: $_generationFilter');
  }

  void _applyFilters() {
    _pokemons = _pokemonsCopy.where((poke) {
      bool typeMatch = _typeFilter
          .every((type) => poke.types.contains(stringFromPokeType(type)));
      bool weaknessMatch = _weaknessFilter
          .every((type) => getTypeWeakness(poke.typeDefences).contains(type));
      bool heightMatch =
          _heightFilter.every((height) => height == getPokeHeight(poke));
      bool weightMatch =
          _weightFilter.every((weight) => weight == getPokeWeight(poke));
      bool numberMatch = true;
      if (_rangeValues != null) {
        numberMatch =
            poke.id <= _rangeValues?.end && poke.id >= _rangeValues?.start;
      }
      bool generationMatch = _generationFilter.isNotEmpty
          ? _generationFilter.contains(getGeneration(poke))
          : true;

      return typeMatch &&
          weaknessMatch &&
          heightMatch &&
          weightMatch &&
          numberMatch &&
          generationMatch;
    }).toList();
    notifyListeners();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _rangeSliderDebounce?.cancel();
    super.dispose();
  }
}
