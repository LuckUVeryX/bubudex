import '../../models/models.dart';

abstract class IPokeDetailsRepository {
  Future<Pokemon> getPokemon(int id);

  Future<PokeSpecies> getSpecies(int id);
}
