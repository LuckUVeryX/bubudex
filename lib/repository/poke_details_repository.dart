import 'dart:convert';

import '../models/models.dart';
import '../services/services.dart';
import 'repository.dart';

class PokeDetailsRepository extends IPokeDetailsRepository {
  PokeDetailsRepository(this._apiService, this._hiveService);
  final ApiService _apiService;
  final HiveService _hiveService;

  @override
  Future<PokeData> getPokeData(int id) async {
    final res = await _apiService.get('https://pokeapi.co/api/v2/pokemon/$id/');
    return PokeData.fromJson(jsonDecode(res.body));
  }
}
