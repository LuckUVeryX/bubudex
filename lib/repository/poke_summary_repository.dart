import 'dart:convert';

import '../models/models.dart';
import '../services/services.dart';
import 'repository.dart';

class PokeDetailsRepository extends IPokeDetailsRepository {
  PokeDetailsRepository(this._apiService, this._hiveService);
  final ApiService _apiService;
  final HiveService _hiveService;

  @override
  PokeSummary getPokeSummary(id) {
    return _hiveService.getPokeSummary(id);
  }

  @override
  Future<Pokemon> getPokemon(int id) async {
    if (_hiveService.inPokemonDb(id)) {
      return _hiveService.getPokemon(id);
    }
    final res = await _apiService.get('https://pokeapi.co/api/v2/pokemon/$id/');
    final pokemon = Pokemon.fromJson(jsonDecode(res.body));
    _hiveService.addPokemon(pokemon);
    return pokemon;
  }

  @override
  Future<PokeSpecies> getSpecies(int id) async {
    if (_hiveService.inSpeciesDb(id)) {
      return _hiveService.getPokeSpecies(id);
    }
    String url = 'https://pokeapi.co/api/v2/pokemon-species/$id/';
    final res = await _apiService.get(url);
    final pokeSpecies = PokeSpecies.fromJson(jsonDecode(res.body));
    _hiveService.addPokeSpecies(pokeSpecies);
    return pokeSpecies;
  }

  @override
  Future<PokeLocationAreas> getEncounters(int id) async {
    if (_hiveService.inLocationDb(id)) {
      return _hiveService.getPokeLocationArea(id);
    }
    String url = 'https://pokeapi.co/api/v2/pokemon/$id/encounters';
    final res = await _apiService.get(url);
    Iterable l = jsonDecode(res.body);
    PokeLocationAreas areas = PokeLocationAreas(
        areas: List<PokeLocationArea>.from(
            l.map((model) => PokeLocationArea.fromJson(model))));
    _hiveService.addPokeLocationArea(id, areas);
    return areas;
  }
}
