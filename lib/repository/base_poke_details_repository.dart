abstract class IPokeDetailsRepository {
  Future getPokeData(int id);

  Future getPokeLocationAreas(int id);
}
