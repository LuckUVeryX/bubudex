import 'package:flutter/foundation.dart';

import '../models/models.dart';
import '../repository/repository.dart';

enum PokeDetailsStatus { init, done, error }

class PokeDetailsProvider extends ChangeNotifier {
  PokeDetailsProvider(this._repository);
  final IPokeDetailsRepository _repository;

  PokeDetailsStatus _status = PokeDetailsStatus.init;
  PokeDetailsStatus get status => _status;

  void setStatus(PokeDetailsStatus status) {
    _status = status;
    notifyListeners();
  }

  late final PokeData _pokeData;
  PokeData get pokeData => _pokeData;

  void init(int id) async {
    try {
      _pokeData = await _repository.getPokeData(id);
      setStatus(PokeDetailsStatus.done);
    } on Exception catch (e) {
      debugPrint(e.toString());
      setStatus(PokeDetailsStatus.error);
    }
  }
}
