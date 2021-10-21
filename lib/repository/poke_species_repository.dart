import 'dart:convert';

import '../models/models.dart';
import '../services/services.dart';
import 'repository.dart';

class PokeSpeciesRepository implements IPokeSpeciesRepository {
  PokeSpeciesRepository(this._apiService, this._hiveService);
  final ApiService _apiService;
  final HiveService _hiveService;

  @override
  Future<PokeSpecies> getSpecies(int id) async {
    if (_hiveService.inSpeciesDb(id)) {
      return _hiveService.getPokeSpecies(id);
    }
    String url = 'https://pokeapi.co/api/v2/pokemon-species/$id/';
    final res = await _apiService.get(url);
    final pokeSpecies = PokeSpecies.fromJson(jsonDecode(res.body));
    await _hiveService.addPokeSpecies(pokeSpecies);
    return pokeSpecies;
  }
}
