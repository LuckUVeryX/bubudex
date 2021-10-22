import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../models/models.dart';
import '../repository/repository.dart';

enum HomePageStatus { init, done, error }

class HomeProvider extends ChangeNotifier {
  HomeProvider(this._repository);
  final IPokeSummaryRepository _repository;

  HomePageStatus _status = HomePageStatus.init;
  HomePageStatus get status => _status;

  List<PokeSummary> _pokemons = [];
  List<PokeSummary> get pokemons => _pokemons;

  void getPokemons() async {
    try {
      _pokemons = await _repository.getPokemons();
      _status = HomePageStatus.done;
    } catch (e) {
      _status = HomePageStatus.error;
      debugPrint(e.toString());
      rethrow;
    }
    notifyListeners();
  }
}
