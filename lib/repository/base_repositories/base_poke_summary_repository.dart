import '../../models/models.dart';

abstract class IPokeSummaryRepository {
  Future<List<PokeSummary>> getPokemons();

  Future<void> clearCache();
}
