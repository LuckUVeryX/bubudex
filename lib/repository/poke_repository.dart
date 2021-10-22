import 'dart:convert';

import '../models/models.dart';
import '../services/services.dart';
import 'base_repositories/base_poke_summary_repository.dart';

class PokeSummaryRepository implements IPokeSummaryRepository {
  PokeSummaryRepository(this._apiService, this._hiveService);
  final ApiService _apiService;
  final HiveService _hiveService;

  static const _dbEndpoint = 'https://pokemon-db-json.herokuapp.com';

  @override
  Future<List<PokeSummary>> getPokemons() async {
    if (_hiveService.pokeSummaryIsNotEmpty) {
      return _hiveService.pokemons;
    }
    final res = await _apiService.get(_dbEndpoint);
    Iterable l = jsonDecode(res.body);
    List<PokeSummary> ls = l.map((e) => PokeSummary.fromJson(e)).toList();
    _hiveService.addPokemonSummaries(ls);
    return ls;
  }

  @override
  Future<void> clearCache() async {
    await _hiveService.clearCache();
  }
}
