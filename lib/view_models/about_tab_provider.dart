import 'package:flutter/foundation.dart';

import '../models/models.dart';
import '../repository/repository.dart';

enum AboutTabStatus { init, done, error }

class AboutTabProvider extends ChangeNotifier {
  AboutTabProvider(this._speciesRepository);

  final IPokeSpeciesRepository _speciesRepository;
  AboutTabStatus _status = AboutTabStatus.init;

  AboutTabStatus get status => _status;

  void setStatus(AboutTabStatus status) {
    _status = status;
    notifyListeners();
  }

  late final PokeSpecies _pokeSpecies;
  PokeSpecies get pokeSpecies => _pokeSpecies;

  void init(int id) async {
    try {
      _pokeSpecies = await _speciesRepository.getSpecies(id);
      setStatus(AboutTabStatus.done);
    } on Exception catch (e) {
      debugPrint(e.toString());
      setStatus(AboutTabStatus.error);
    }
  }
}
