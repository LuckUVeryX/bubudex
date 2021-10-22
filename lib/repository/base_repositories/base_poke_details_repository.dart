import '../../models/models.dart';

abstract class IPokeDetailsRepository {
  PokeSummary getPokeSummary(id);

  Future<Pokemon> getPokemon(int id);

  Future<PokeSpecies> getSpecies(int id);

  Future<PokeLocationAreas> getEncounters(int id);
}
