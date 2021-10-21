import '../../models/models.dart';

abstract class IPokeSpeciesRepository {
  Future<PokeSpecies> getSpecies(int id);
}
