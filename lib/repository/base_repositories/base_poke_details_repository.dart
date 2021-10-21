import '../../models/models.dart';

abstract class IPokeDetailsRepository {
  Future getPokeData(int id);

  Future<PokeSpecies> getSpecies(int id);
}
