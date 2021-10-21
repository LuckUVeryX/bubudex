import 'dart:convert';

import '../models/models.dart';
import '../services/services.dart';
import 'base_repositories/base_poke_repository.dart';

class PokeApiRepository implements IPokeRepository {
  PokeApiRepository(this._apiService, this._hiveService);
  final ApiService _apiService;
  final HiveService _hiveService;

  static const _dbEndpoint = 'https://pokemon-db-json.herokuapp.com';

  @override
  Future<List<PokeSummary>> getPokemons() async {
    if (_hiveService.pokemonDbIsNotEmpty) {
      return _hiveService.pokemons;
    }
    final res = await _apiService.get(_dbEndpoint);
    Iterable l = jsonDecode(res.body);
    List<PokeSummary> ls = l.map((e) => PokeSummary.fromJson(e)).toList();
    _hiveService.addPokemons(ls);
    return ls;
  }
}
