import '../../models/models.dart';

abstract class IPokeRepository {
  Future<List<PokeSummary>> getPokemons();
}
