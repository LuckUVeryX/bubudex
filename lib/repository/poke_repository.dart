import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/models.dart';
import '../services/services.dart';
import 'base_poke_repository.dart';

class PokeApiRepository implements IPokeRepository {
  PokeApiRepository(this._apiService, this._hiveService);
  final ApiService _apiService;
  final HiveService _hiveService;

  static const _dbEndpoint = 'https://pokemon-db-json.herokuapp.com';

  @override
  Future<List<Pokemon>> getPokemons() async {
    // get pokemon from db
    Box<Pokemon> pokemonDb = _hiveService.pokemonDb;
    List<Pokemon> dbList = pokemonDb.values.toList();
    if (dbList.isNotEmpty) {
      return dbList;
    }
    // if db does not have pokemons fetch from api
    debugPrint('Fetching from API');
    final res = await _apiService.get(_dbEndpoint);
    Iterable l = jsonDecode(res.body);
    List<Pokemon> ls = l.map((e) => Pokemon.fromJson(e)).toList();

    // add pokemons to db
    pokemonDb.addAll(ls);

    return ls;
  }
}
