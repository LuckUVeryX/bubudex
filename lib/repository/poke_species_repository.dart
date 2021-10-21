import 'dart:convert';

import '../models/models.dart';
import '../services/services.dart';
import 'repository.dart';

class PokeSpeciesRepository implements IPokeSpeciesRepository {
  PokeSpeciesRepository(this._apiService);
  final ApiService _apiService;

  @override
  Future<PokeSpecies> getSpecies(int id) async {
    String url = 'https://pokeapi.co/api/v2/pokemon-species/$id/';
    final res = await _apiService.get(url);
    return PokeSpecies.fromJson(jsonDecode(res.body));
  }
}
