import 'dart:convert';

import '../models/models.dart';
import '../services/services.dart';
import 'repository.dart';

class PokeDetailsRepository extends IPokeDetailsRepository {
  PokeDetailsRepository(this._apiService, this._hiveService);
  final ApiService _apiService;
  final HiveService _hiveService;

  @override
  Future<Pokemon> getPokeData(int id) async {
    final res = await _apiService.get('https://pokeapi.co/api/v2/pokemon/$id/');

    return Pokemon.fromJson(jsonDecode(res.body));
  }

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
