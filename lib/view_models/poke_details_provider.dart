import 'package:flutter/foundation.dart';

import '../models/models.dart';
import '../repository/repository.dart';

enum PokeDetailsStatus { init, done, error }

class PokeDetailsProvider extends ChangeNotifier {
  PokeDetailsProvider(this._repository, this._id);
  final IPokeDetailsRepository _repository;
  final int _id;

  PokeDetailsStatus _status = PokeDetailsStatus.init;
  PokeDetailsStatus get status => _status;

  void setStatus(PokeDetailsStatus status) {
    _status = status;
    notifyListeners();
  }

  late final PokeSummary _pokeSummary;
  PokeSummary get pokeSummary => _pokeSummary;

  late final PokeSpecies _pokeSpecies;
  PokeSpecies get pokeSpecies => _pokeSpecies;

  late final Pokemon _pokemon;
  Pokemon get pokemon => _pokemon;

  late final List<PokeLocationArea> _pokeLocationArea;
  List<PokeLocationArea> get locationAreas => _pokeLocationArea;

  void init() async {
    try {
      _pokeSummary = _repository.getPokeSummary(_id);
      await Future.wait([
        _initPokemon(),
        _initPokeSpecies(),
        _initEncounters(),
      ]);
      setStatus(PokeDetailsStatus.done);
    } on Exception catch (e) {
      debugPrint(e.toString());
      setStatus(PokeDetailsStatus.error);
    }
  }

  Future<void> _initEncounters() async {
    _pokeLocationArea = await _repository.getEncounters(_id);
  }

  Future<void> _initPokeSpecies() async {
    _pokeSpecies = await _repository.getSpecies(_id);
  }

  Future<void> _initPokemon() async {
    _pokemon = await _repository.getPokemon(_id);
  }
}
