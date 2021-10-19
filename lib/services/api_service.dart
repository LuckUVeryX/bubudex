import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/models.dart';

class ApiService {
  static const _dbEndpoint = 'https://pokemon-db-json.herokuapp.com';

  Future<List<Pokemon>> getPokemons() async {
    final uri = Uri.parse(_dbEndpoint);
    final res = await http.get(uri);
    Iterable ls = jsonDecode(res.body);
    return ls.map((e) => Pokemon.fromJson(e)).toList();
  }
}
