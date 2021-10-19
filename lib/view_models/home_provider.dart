import 'package:flutter/foundation.dart';

import '../models/models.dart';
import '../repository/repository.dart';

enum HomePageStatus { init, done, error }

class HomeProvider extends ChangeNotifier {
  HomeProvider(this._repository);

  final IPokeRepository _repository;

  HomePageStatus _status = HomePageStatus.init;
  HomePageStatus get status => _status;

  late final List<Pokemon> _pokemons;

  List<Pokemon> get pokemons => _pokemons;

  Future<void> getPokemons() async {
    try {
      _pokemons = await _repository.getPokemons();
      _status = HomePageStatus.done;
    } catch (e) {
      _status = HomePageStatus.error;
      debugPrint(e.toString());
    } finally {
      notifyListeners();
    }
  }
}
